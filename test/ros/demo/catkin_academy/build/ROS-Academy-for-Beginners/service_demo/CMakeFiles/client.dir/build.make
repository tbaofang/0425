# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/tbf/projects/0425/test/ros/demo/catkin_academy/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tbf/projects/0425/test/ros/demo/catkin_academy/build

# Include any dependencies generated for this target.
include ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/depend.make

# Include the progress variables for this target.
include ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/progress.make

# Include the compile flags for this target's objects.
include ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/flags.make

ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/src/client.cpp.o: ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/flags.make
ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/src/client.cpp.o: /home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/service_demo/src/client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tbf/projects/0425/test/ros/demo/catkin_academy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/src/client.cpp.o"
	cd /home/tbf/projects/0425/test/ros/demo/catkin_academy/build/ROS-Academy-for-Beginners/service_demo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/client.dir/src/client.cpp.o -c /home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/service_demo/src/client.cpp

ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/src/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/client.cpp.i"
	cd /home/tbf/projects/0425/test/ros/demo/catkin_academy/build/ROS-Academy-for-Beginners/service_demo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/service_demo/src/client.cpp > CMakeFiles/client.dir/src/client.cpp.i

ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/src/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/client.cpp.s"
	cd /home/tbf/projects/0425/test/ros/demo/catkin_academy/build/ROS-Academy-for-Beginners/service_demo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/service_demo/src/client.cpp -o CMakeFiles/client.dir/src/client.cpp.s

ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/src/client.cpp.o.requires:

.PHONY : ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/src/client.cpp.o.requires

ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/src/client.cpp.o.provides: ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/src/client.cpp.o.requires
	$(MAKE) -f ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/build.make ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/src/client.cpp.o.provides.build
.PHONY : ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/src/client.cpp.o.provides

ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/src/client.cpp.o.provides.build: ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/src/client.cpp.o


# Object files for target client
client_OBJECTS = \
"CMakeFiles/client.dir/src/client.cpp.o"

# External object files for target client
client_EXTERNAL_OBJECTS =

/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/src/client.cpp.o
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/build.make
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: /opt/ros/kinetic/lib/libroscpp.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: /opt/ros/kinetic/lib/librosconsole.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: /opt/ros/kinetic/lib/librostime.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: /opt/ros/kinetic/lib/libcpp_common.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client: ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tbf/projects/0425/test/ros/demo/catkin_academy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client"
	cd /home/tbf/projects/0425/test/ros/demo/catkin_academy/build/ROS-Academy-for-Beginners/service_demo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/build: /home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/client

.PHONY : ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/build

ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/requires: ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/src/client.cpp.o.requires

.PHONY : ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/requires

ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/clean:
	cd /home/tbf/projects/0425/test/ros/demo/catkin_academy/build/ROS-Academy-for-Beginners/service_demo && $(CMAKE_COMMAND) -P CMakeFiles/client.dir/cmake_clean.cmake
.PHONY : ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/clean

ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/depend:
	cd /home/tbf/projects/0425/test/ros/demo/catkin_academy/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tbf/projects/0425/test/ros/demo/catkin_academy/src /home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/service_demo /home/tbf/projects/0425/test/ros/demo/catkin_academy/build /home/tbf/projects/0425/test/ros/demo/catkin_academy/build/ROS-Academy-for-Beginners/service_demo /home/tbf/projects/0425/test/ros/demo/catkin_academy/build/ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ROS-Academy-for-Beginners/service_demo/CMakeFiles/client.dir/depend

