#include "ros/ros.h"
#include "tesi_bluerov2/Floats.h" // for accessing -- tesi_bluerov2 Floats()
#include <random>
#include <eigen3/Eigen/Dense>
#include <rosbag/bag.h>

double x = 0.0;
double y = 0.0;
double z = 0.0;
double phi = 0.0;
double theta = 0.0;
double psi = 0.0;

double x_dot = 0.0;
double y_dot = 0.0;
double z_dot = 0.0;
double phi_dot = 0.0;
double theta_dot = 0.0;
double psi_dot = 0.0;

int main(int argc, char **argv)
{
    // Initialize the ROS system and become a node.
    ros::init(argc, argv, "trajectory_publisher");

    // Create a handle to this process' node.
    ros::NodeHandle nh;

    // Create a publisher object.
    ros::Publisher pub = nh.advertise<tesi_bluerov2::Floats>("state/desired_state_topic", 1000);
    rosbag::Bag des_state_bag;
    std::string path = ros::package::getPath("tesi_bluerov2");
    des_state_bag.open(path + "/bag/des_state.bag", rosbag::bagmode::Write);

    bool is_first_loop = true;
    double start_time;
    double freq = 300;
    double dt = 1.0 / freq;
    ros::Duration(60).sleep();

    // Loop at 50Hz, publishing messages until this node is shut down.
    ros::Rate rate(freq);
    while (ros::ok())
    {

        if (is_first_loop)
        {
            is_first_loop = false;
            start_time = ros::Time::now().toSec();
        }

        double u;
        double w;

        if (x >= 10.0)
        {
            u = 0.0;
        }
        else
        {
            u = 0.5;
        }

        if (z >= 5.0)
        {
            w = 0.0;
        }
        else
        {
            w = 0.25;
        }

        double v = 0.0;
        double p = 0.0;
        double q = 0.0;
        double r = 0.0; // 30*M_PI / 180;

        Eigen::Matrix<double, 6, 1> pos;
        pos << x, y, z, phi, theta, psi;

        Eigen::Matrix<double, 6, 1> vel;
        vel << u, v, w, p, q, r;

        Eigen::Matrix<double, 6, 6> J;
        J << cos(psi) * cos(theta), cos(psi) * sin(phi) * sin(theta) - cos(phi) * sin(psi), sin(phi) * sin(psi) + cos(phi) * cos(psi) * sin(theta), 0, 0, 0,
            cos(theta) * sin(psi), cos(phi) * cos(psi) + sin(phi) * sin(psi) * sin(theta), cos(phi) * sin(psi) * sin(theta) - cos(psi) * sin(phi), 0, 0, 0,
            -sin(theta), cos(theta) * sin(phi), cos(phi) * cos(theta), 0, 0, 0,
            0, 0, 0, 1, sin(phi) * tan(theta), cos(phi) * tan(theta),
            0, 0, 0, 0, cos(phi), -sin(phi),
            0, 0, 0, 0, sin(phi) / cos(theta), cos(phi) / cos(theta);

        Eigen::Matrix<double, 6, 1> state_dot = J * vel;

        x_dot = state_dot(0);
        y_dot = state_dot(1);
        z_dot = state_dot(2);
        phi_dot = state_dot(3);
        theta_dot = state_dot(4);
        psi_dot = state_dot(5);

        Eigen::VectorXd state_k1 = pos + dt * state_dot;

        // Add noise to the accelerometer data and fill the message
        std::vector<double> state_data = {x, y, z, phi, theta, psi, x_dot, y_dot, z_dot, phi_dot, theta_dot, psi_dot};
        tesi_bluerov2::Floats msg;
        msg.data = state_data;

        x = state_k1(0);
        y = state_k1(1);
        z = state_k1(2);
        phi = state_k1(3);
        theta = state_k1(4);
        psi = state_k1(5);

        phi = atan2(sin(phi), cos(phi));
        theta = atan2(sin(theta), cos(theta));
        psi = atan2(sin(psi), cos(psi));

        // Publish the message.
        pub.publish(msg);

        if (ros::Time::now().toSec() > ros::TIME_MIN.toSec())
        {
            des_state_bag.write("state/desired_state_topic", ros::Time::now(), msg);
        }

        // Send any pending callbacks.
        ros::spinOnce();

        // Wait until it's time for another iteration.
        rate.sleep();
    }
    des_state_bag.close();
    return 0;
}