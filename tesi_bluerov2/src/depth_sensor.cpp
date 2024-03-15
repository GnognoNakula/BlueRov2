#include "ros/ros.h"
#include "tesi_bluerov2/Floats.h" // for accessing -- tesi_bluerov2 Floats()
#include <random>

double z_hat = 0.0;

double var_z = 1;

// Function to generate Gaussian random number
double gaussianNoise(double mean, double stddev)
{
    std::random_device rd;
    std::mt19937 gen(rd());
    std::normal_distribution<> d(mean, stddev);
    return d(gen);
}

// Callback function for the state_topic subscriber
void stateCallback(const tesi_bluerov2::Floats::ConstPtr &msg)
{
    if (msg->data[0] != msg->data[0])
    {
        z_hat = 0.0;
    }
    else
    {
        z_hat = msg->data[0];
    }
}

int main(int argc, char **argv)
{
    // Initialize the ROS system and become a node.
    ros::init(argc, argv, "depth_sensor_publisher");

    // Create a handle to this process' node.
    ros::NodeHandle nh;

    // Create a publisher object.
    ros::Publisher pub = nh.advertise<tesi_bluerov2::Floats>("depth_sensor_topic", 1000);

    // Create a subscriber object.
    ros::Subscriber sub = nh.subscribe("state_topic", 1000, stateCallback);

    // Seed the random number generator.
    srand(time(0));

    // Loop at 10Hz, publishing messages until this node is shut down.
    ros::Rate rate(5);
    while (ros::ok())
    {
        tesi_bluerov2::Floats msg;
        double valid = 1.0;

        // Add noise to the depth_sensor data and fill the message
        std::vector<double> depth_sensor_data = {z_hat + gaussianNoise(0, var_z), valid};
        msg.data = depth_sensor_data;

        // Publish the message.
        pub.publish(msg);

        // Send any pending callbacks.
        ros::spinOnce();

        // Wait until it's time for another iteration.
        rate.sleep();
    }

    return 0;
}