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
CMAKE_SOURCE_DIR = /home/lee/workspace/ROS_ws/ex_250_campus/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lee/workspace/ROS_ws/ex_250_campus/build

# Include any dependencies generated for this target.
include demo/CMakeFiles/fly.dir/depend.make

# Include the progress variables for this target.
include demo/CMakeFiles/fly.dir/progress.make

# Include the compile flags for this target's objects.
include demo/CMakeFiles/fly.dir/flags.make

demo/CMakeFiles/fly.dir/node/fly.cpp.o: demo/CMakeFiles/fly.dir/flags.make
demo/CMakeFiles/fly.dir/node/fly.cpp.o: /home/lee/workspace/ROS_ws/ex_250_campus/src/demo/node/fly.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lee/workspace/ROS_ws/ex_250_campus/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object demo/CMakeFiles/fly.dir/node/fly.cpp.o"
	cd /home/lee/workspace/ROS_ws/ex_250_campus/build/demo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fly.dir/node/fly.cpp.o -c /home/lee/workspace/ROS_ws/ex_250_campus/src/demo/node/fly.cpp

demo/CMakeFiles/fly.dir/node/fly.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fly.dir/node/fly.cpp.i"
	cd /home/lee/workspace/ROS_ws/ex_250_campus/build/demo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lee/workspace/ROS_ws/ex_250_campus/src/demo/node/fly.cpp > CMakeFiles/fly.dir/node/fly.cpp.i

demo/CMakeFiles/fly.dir/node/fly.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fly.dir/node/fly.cpp.s"
	cd /home/lee/workspace/ROS_ws/ex_250_campus/build/demo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lee/workspace/ROS_ws/ex_250_campus/src/demo/node/fly.cpp -o CMakeFiles/fly.dir/node/fly.cpp.s

demo/CMakeFiles/fly.dir/src/takeoff.cpp.o: demo/CMakeFiles/fly.dir/flags.make
demo/CMakeFiles/fly.dir/src/takeoff.cpp.o: /home/lee/workspace/ROS_ws/ex_250_campus/src/demo/src/takeoff.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lee/workspace/ROS_ws/ex_250_campus/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object demo/CMakeFiles/fly.dir/src/takeoff.cpp.o"
	cd /home/lee/workspace/ROS_ws/ex_250_campus/build/demo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fly.dir/src/takeoff.cpp.o -c /home/lee/workspace/ROS_ws/ex_250_campus/src/demo/src/takeoff.cpp

demo/CMakeFiles/fly.dir/src/takeoff.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fly.dir/src/takeoff.cpp.i"
	cd /home/lee/workspace/ROS_ws/ex_250_campus/build/demo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lee/workspace/ROS_ws/ex_250_campus/src/demo/src/takeoff.cpp > CMakeFiles/fly.dir/src/takeoff.cpp.i

demo/CMakeFiles/fly.dir/src/takeoff.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fly.dir/src/takeoff.cpp.s"
	cd /home/lee/workspace/ROS_ws/ex_250_campus/build/demo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lee/workspace/ROS_ws/ex_250_campus/src/demo/src/takeoff.cpp -o CMakeFiles/fly.dir/src/takeoff.cpp.s

# Object files for target fly
fly_OBJECTS = \
"CMakeFiles/fly.dir/node/fly.cpp.o" \
"CMakeFiles/fly.dir/src/takeoff.cpp.o"

# External object files for target fly
fly_EXTERNAL_OBJECTS =

/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: demo/CMakeFiles/fly.dir/node/fly.cpp.o
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: demo/CMakeFiles/fly.dir/src/takeoff.cpp.o
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: demo/CMakeFiles/fly.dir/build.make
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /usr/lib/liborocos-kdl.so
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /usr/lib/liborocos-kdl.so
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /opt/ros/noetic/lib/libtf2_ros.so
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /opt/ros/noetic/lib/libactionlib.so
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /opt/ros/noetic/lib/libmessage_filters.so
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /opt/ros/noetic/lib/libroscpp.so
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /usr/lib/x86_64-linux-gnu/libpthread.a
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /opt/ros/noetic/lib/librosconsole.so
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /opt/ros/noetic/lib/libtf2.so
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /opt/ros/noetic/lib/librostime.so
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /opt/ros/noetic/lib/libcpp_common.so
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly: demo/CMakeFiles/fly.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lee/workspace/ROS_ws/ex_250_campus/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly"
	cd /home/lee/workspace/ROS_ws/ex_250_campus/build/demo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fly.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
demo/CMakeFiles/fly.dir/build: /home/lee/workspace/ROS_ws/ex_250_campus/devel/lib/demo/fly

.PHONY : demo/CMakeFiles/fly.dir/build

demo/CMakeFiles/fly.dir/clean:
	cd /home/lee/workspace/ROS_ws/ex_250_campus/build/demo && $(CMAKE_COMMAND) -P CMakeFiles/fly.dir/cmake_clean.cmake
.PHONY : demo/CMakeFiles/fly.dir/clean

demo/CMakeFiles/fly.dir/depend:
	cd /home/lee/workspace/ROS_ws/ex_250_campus/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lee/workspace/ROS_ws/ex_250_campus/src /home/lee/workspace/ROS_ws/ex_250_campus/src/demo /home/lee/workspace/ROS_ws/ex_250_campus/build /home/lee/workspace/ROS_ws/ex_250_campus/build/demo /home/lee/workspace/ROS_ws/ex_250_campus/build/demo/CMakeFiles/fly.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : demo/CMakeFiles/fly.dir/depend

