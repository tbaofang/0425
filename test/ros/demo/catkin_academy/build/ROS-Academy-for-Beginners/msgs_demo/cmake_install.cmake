# Install script for directory: /home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/tbf/projects/0425/test/ros/demo/catkin_academy/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo/msg" TYPE FILE FILES
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/msg/Accel.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/msg/Echos.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/msg/Imu.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/msg/LaserScan.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/msg/Odometry.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/msg/Point.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/msg/Pose.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/msg/PoseStamped.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/msg/PoseWithCovariance.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/msg/Power.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/msg/Quaternion.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/msg/Twist.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/msg/TwistWithCovariance.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/msg/Vector3.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo/srv" TYPE FILE FILES
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/srv/AddTwoInts.srv"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/srv/TalkerListener.srv"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/srv/SetCameraInfo.srv"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/srv/GetPlan.srv"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/srv/SetMap.srv"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/srv/GetMap.srv"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/srv/Empty.srv"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/srv/SetBool.srv"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/srv/Trigger.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo/action" TYPE FILE FILES
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/action/AutoDocking.action"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/action/AddTwoInts.action"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/action/GetMap.action"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/action/MoveBase.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo/msg" TYPE FILE FILES
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/AutoDockingAction.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/AutoDockingActionGoal.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/AutoDockingActionResult.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/AutoDockingActionFeedback.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/AutoDockingGoal.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/AutoDockingResult.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/AutoDockingFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo/msg" TYPE FILE FILES
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/AddTwoIntsAction.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/AddTwoIntsActionGoal.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/AddTwoIntsActionResult.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/AddTwoIntsActionFeedback.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/AddTwoIntsGoal.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/AddTwoIntsResult.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/AddTwoIntsFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo/msg" TYPE FILE FILES
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/GetMapAction.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/GetMapActionGoal.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/GetMapActionResult.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/GetMapActionFeedback.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/GetMapGoal.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/GetMapResult.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/GetMapFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo/msg" TYPE FILE FILES
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/MoveBaseAction.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/MoveBaseActionGoal.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/MoveBaseActionResult.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/MoveBaseActionFeedback.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/MoveBaseGoal.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/MoveBaseResult.msg"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/msgs_demo/msg/MoveBaseFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo/cmake" TYPE FILE FILES "/home/tbf/projects/0425/test/ros/demo/catkin_academy/build/ROS-Academy-for-Beginners/msgs_demo/catkin_generated/installspace/msgs_demo-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/include/msgs_demo")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/roseus/ros/msgs_demo")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/common-lisp/ros/msgs_demo")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/share/gennodejs/ros/msgs_demo")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/python2.7/dist-packages/msgs_demo")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/tbf/projects/0425/test/ros/demo/catkin_academy/devel/lib/python2.7/dist-packages/msgs_demo")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/tbf/projects/0425/test/ros/demo/catkin_academy/build/ROS-Academy-for-Beginners/msgs_demo/catkin_generated/installspace/msgs_demo.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo/cmake" TYPE FILE FILES "/home/tbf/projects/0425/test/ros/demo/catkin_academy/build/ROS-Academy-for-Beginners/msgs_demo/catkin_generated/installspace/msgs_demo-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo/cmake" TYPE FILE FILES
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/build/ROS-Academy-for-Beginners/msgs_demo/catkin_generated/installspace/msgs_demoConfig.cmake"
    "/home/tbf/projects/0425/test/ros/demo/catkin_academy/build/ROS-Academy-for-Beginners/msgs_demo/catkin_generated/installspace/msgs_demoConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/msgs_demo" TYPE FILE FILES "/home/tbf/projects/0425/test/ros/demo/catkin_academy/src/ROS-Academy-for-Beginners/msgs_demo/package.xml")
endif()

