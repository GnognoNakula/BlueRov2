# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/angelo/catkin_ws/src/tesi_bluerov2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/angelo/catkin_ws/src/tesi_bluerov2/build

# Include any dependencies generated for this target.
include CMakeFiles/camera.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/camera.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/camera.dir/flags.make

CMakeFiles/camera.dir/src/camera.cpp.o: CMakeFiles/camera.dir/flags.make
CMakeFiles/camera.dir/src/camera.cpp.o: ../src/camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/angelo/catkin_ws/src/tesi_bluerov2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/camera.dir/src/camera.cpp.o"
	/usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/camera.dir/src/camera.cpp.o -c /home/angelo/catkin_ws/src/tesi_bluerov2/src/camera.cpp

CMakeFiles/camera.dir/src/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/camera.dir/src/camera.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/angelo/catkin_ws/src/tesi_bluerov2/src/camera.cpp > CMakeFiles/camera.dir/src/camera.cpp.i

CMakeFiles/camera.dir/src/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/camera.dir/src/camera.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/angelo/catkin_ws/src/tesi_bluerov2/src/camera.cpp -o CMakeFiles/camera.dir/src/camera.cpp.s

# Object files for target camera
camera_OBJECTS = \
"CMakeFiles/camera.dir/src/camera.cpp.o"

# External object files for target camera
camera_EXTERNAL_OBJECTS =

devel/lib/tesi_bluerov2/camera: CMakeFiles/camera.dir/src/camera.cpp.o
devel/lib/tesi_bluerov2/camera: CMakeFiles/camera.dir/build.make
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_api_plugin.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_paths_plugin.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libvision_reconfigure.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_utils.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_camera_utils.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_camera.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_triggered_camera.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_multicamera.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_triggered_multicamera.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_depth_camera.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_openni_kinect.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_gpu_laser.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_laser.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_block_laser.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_p3d.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_imu.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_imu_sensor.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_f3d.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_ft_sensor.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_bumper.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_template.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_projector.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_prosilica.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_force.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_joint_state_publisher.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_joint_pose_trajectory.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_diff_drive.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_tricycle_drive.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_skid_steer_drive.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_video.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_planar_move.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_range.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libgazebo_ros_vacuum_gripper.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libnodeletlib.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libbondcpp.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libuuid.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/liburdf.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/liburdfdom_sensor.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/liburdfdom_model_state.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/liburdfdom_model.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/liburdfdom_world.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libtinyxml.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/librosconsole_bridge.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libtf.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libtf2_ros.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libactionlib.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libtf2.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libdynamic_reconfigure_config_init_mutex.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libimage_transport.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libmessage_filters.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libcamera_info_manager.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libcamera_calibration_parsers.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/librosbag.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/librosbag_storage.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libclass_loader.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libPocoFoundation.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libdl.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libroslib.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/librospack.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libpython3.8.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libroslz4.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/liblz4.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libtopic_tools.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libroscpp.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/librosconsole.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/librosconsole_log4cxx.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/librosconsole_backend_interface.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libroscpp_serialization.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libxmlrpcpp.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/librostime.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libcpp_common.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libroscpp.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/librosconsole.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/librosconsole_log4cxx.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/librosconsole_backend_interface.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libroscpp_serialization.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libxmlrpcpp.so
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/librostime.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
devel/lib/tesi_bluerov2/camera: /opt/ros/noetic/lib/libcpp_common.so
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
devel/lib/tesi_bluerov2/camera: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
devel/lib/tesi_bluerov2/camera: CMakeFiles/camera.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/angelo/catkin_ws/src/tesi_bluerov2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable devel/lib/tesi_bluerov2/camera"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/camera.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/camera.dir/build: devel/lib/tesi_bluerov2/camera

.PHONY : CMakeFiles/camera.dir/build

CMakeFiles/camera.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/camera.dir/cmake_clean.cmake
.PHONY : CMakeFiles/camera.dir/clean

CMakeFiles/camera.dir/depend:
	cd /home/angelo/catkin_ws/src/tesi_bluerov2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/angelo/catkin_ws/src/tesi_bluerov2 /home/angelo/catkin_ws/src/tesi_bluerov2 /home/angelo/catkin_ws/src/tesi_bluerov2/build /home/angelo/catkin_ws/src/tesi_bluerov2/build /home/angelo/catkin_ws/src/tesi_bluerov2/build/CMakeFiles/camera.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/camera.dir/depend

