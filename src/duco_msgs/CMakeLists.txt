cmake_minimum_required(VERSION 2.8.3)
project(duco_msgs)

find_package(catkin REQUIRED COMPONENTS message_generation std_msgs)

add_message_files(
   FILES
   DucoAnalog.msg
   DucoDigital.msg
   DucoIOState.msg
   DucoRobotState.msg
 )

## Generate services in the 'srv' folder
add_service_files(
   FILES
   DucoGetFK.srv
   DucoGetIK.srv
   DucoIOStates.srv
   DucoCommand.srv
   DucoRobotStates.srv
)

## Generate added messages and services with any dependencies listed here
generate_messages(
   DEPENDENCIES
   std_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime std_msgs
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)
