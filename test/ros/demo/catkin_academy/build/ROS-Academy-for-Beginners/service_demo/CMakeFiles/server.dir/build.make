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
include ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/depend.make

# Include the progress variables for this target.
include ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/flags.make

ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/src/server.cpp.o: ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/flags.make
ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/src/server.cpp.o: /home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/service_demo/src/server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tbf/projects/0425/test/ros/demo/catkin_academy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/src/server.cpp.o"
	cd /home/tbf/projects/0425/test/ros/demo/catkin_academy/build/ROS-Academy-for-Beginners/service_demo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server.dir/src/server.cpp.o -c /home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/service_demo/src/server.cpp

ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/src/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/server.cpp.i"
	cd /home/tbf/projects/0425/test/ros/demo/catkin_academy/build/ROS-Academy-for-Beginners/service_demo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/service_demo/src/server.cpp > CMakeFiles/server.dir/src/server.cpp.i

ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/src/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/server.cpp.s"
	cd /home/tbf/projects/0425/test/ros/demo/catkin_academy/build/ROS-Academy-for-Beginners/service_demo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/service_demo/src/server.cpp -o CMakeFiles/server.dir/src/server.cpp.s

ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/src/server.cpp.o.requires:

.PHONY : ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/src/server.cpp.o.requires

ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/src/server.cpp.o.provides: ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/src/server.cpp.o.requires
	$(MAKE) -f ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/build.make ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/src/server.cpp.o.provides.build
.PHONY : ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/src/server.cpp.o.provides

ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/src/server.cpp.o.provides.build: ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/src/server.cpp.o


# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/src/server.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/src/server.cpp.o
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/build.make
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: /opt/ros/kinetic/lib/libroscpp.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: /opt/ros/kinetic/lib/librosconsole.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: /opt/ros/kinetic/lib/librostime.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: /opt/ros/kinetic/lib/libcpp_common.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server: ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tbf/projects/0425/test/ros/demo/catkin_academy/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server"
	cd /home/tbf/projects/0425/test/ros/demo/catkin_academy/build/ROS-Academy-for-Beginners/service_demo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/build: /home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/service_demo/server

.PHONY : ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/build

ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/requires: ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/src/server.cpp.o.requires

.PHONY : ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/requires

ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/clean:
	cd /home/tbf/projects/0425/test/ros/demo/catkin_academy/build/ROS-Academy-for-Beginners/service_demo && $(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/clean

ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/depend:
	cd /home/tbf/projects/0425/test/ros/demo/catkin_academy/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tbf/projects/0425/test/ros/demo/catkin_academy/src /home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/service_demo /home/tbf/projects/0425/test/ros/demo/catkin_academy/build /home/tbf/projects/0425/test/ros/demo/catkin_academy/build/ROS-Academy-for-Beginners/service_demo /home/tbf/projects/0425/test/ros/demo/catkin_academy/build/ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ROS-Academy-for-Beginners/service_demo/CMakeFiles/server.dir/depend

