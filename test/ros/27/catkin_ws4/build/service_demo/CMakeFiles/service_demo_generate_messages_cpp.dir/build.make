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
CMAKE_SOURCE_DIR = /home/tbf/projects/0425/test/ros/27/catkin_ws4/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tbf/projects/0425/test/ros/27/catkin_ws4/build

# Utility rule file for service_demo_generate_messages_cpp.

# Include the progress variables for this target.
include service_demo/CMakeFiles/service_demo_generate_messages_cpp.dir/progress.make

service_demo/CMakeFiles/service_demo_generate_messages_cpp: /home/tbf/projects/0425/test/ros/27/catkin_ws4/devel/include/service_demo/Greeting.h


/home/tbf/projects/0425/test/ros/27/catkin_ws4/devel/include/service_demo/Greeting.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/tbf/projects/0425/test/ros/27/catkin_ws4/devel/include/service_demo/Greeting.h: /home/tbf/projects/0425/test/ros/27/catkin_ws4/src/service_demo/srv/Greeting.srv
/home/tbf/projects/0425/test/ros/27/catkin_ws4/devel/include/service_demo/Greeting.h: /opt/ros/kinetic/share/gencpp/msg.h.template
/home/tbf/projects/0425/test/ros/27/catkin_ws4/devel/include/service_demo/Greeting.h: /opt/ros/kinetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/tbf/projects/0425/test/ros/27/catkin_ws4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from service_demo/Greeting.srv"
	cd /home/tbf/projects/0425/test/ros/27/catkin_ws4/src/service_demo && /home/tbf/projects/0425/test/ros/27/catkin_ws4/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/tbf/projects/0425/test/ros/27/catkin_ws4/src/service_demo/srv/Greeting.srv -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -p service_demo -o /home/tbf/projects/0425/test/ros/27/catkin_ws4/devel/include/service_demo -e /opt/ros/kinetic/share/gencpp/cmake/..

service_demo_generate_messages_cpp: service_demo/CMakeFiles/service_demo_generate_messages_cpp
service_demo_generate_messages_cpp: /home/tbf/projects/0425/test/ros/27/catkin_ws4/devel/include/service_demo/Greeting.h
service_demo_generate_messages_cpp: service_demo/CMakeFiles/service_demo_generate_messages_cpp.dir/build.make

.PHONY : service_demo_generate_messages_cpp

# Rule to build all files generated by this target.
service_demo/CMakeFiles/service_demo_generate_messages_cpp.dir/build: service_demo_generate_messages_cpp

.PHONY : service_demo/CMakeFiles/service_demo_generate_messages_cpp.dir/build

service_demo/CMakeFiles/service_demo_generate_messages_cpp.dir/clean:
	cd /home/tbf/projects/0425/test/ros/27/catkin_ws4/build/service_demo && $(CMAKE_COMMAND) -P CMakeFiles/service_demo_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : service_demo/CMakeFiles/service_demo_generate_messages_cpp.dir/clean

service_demo/CMakeFiles/service_demo_generate_messages_cpp.dir/depend:
	cd /home/tbf/projects/0425/test/ros/27/catkin_ws4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tbf/projects/0425/test/ros/27/catkin_ws4/src /home/tbf/projects/0425/test/ros/27/catkin_ws4/src/service_demo /home/tbf/projects/0425/test/ros/27/catkin_ws4/build /home/tbf/projects/0425/test/ros/27/catkin_ws4/build/service_demo /home/tbf/projects/0425/test/ros/27/catkin_ws4/build/service_demo/CMakeFiles/service_demo_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : service_demo/CMakeFiles/service_demo_generate_messages_cpp.dir/depend

