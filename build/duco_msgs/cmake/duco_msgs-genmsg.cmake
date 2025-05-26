# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "duco_msgs: 4 messages, 5 services")

set(MSG_I_FLAGS "-Iduco_msgs:/home/shenyi/duco_ws/src/duco_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(duco_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoRobotStates.srv" NAME_WE)
add_custom_target(_duco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "duco_msgs" "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoRobotStates.srv" "duco_msgs/DucoRobotState"
)

get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoRobotState.msg" NAME_WE)
add_custom_target(_duco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "duco_msgs" "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoRobotState.msg" ""
)

get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoCommand.srv" NAME_WE)
add_custom_target(_duco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "duco_msgs" "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoCommand.srv" ""
)

get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoIOStates.srv" NAME_WE)
add_custom_target(_duco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "duco_msgs" "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoIOStates.srv" ""
)

get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetIK.srv" NAME_WE)
add_custom_target(_duco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "duco_msgs" "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetIK.srv" ""
)

get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetFK.srv" NAME_WE)
add_custom_target(_duco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "duco_msgs" "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetFK.srv" ""
)

get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoAnalog.msg" NAME_WE)
add_custom_target(_duco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "duco_msgs" "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoAnalog.msg" ""
)

get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoDigital.msg" NAME_WE)
add_custom_target(_duco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "duco_msgs" "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoDigital.msg" ""
)

get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoIOState.msg" NAME_WE)
add_custom_target(_duco_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "duco_msgs" "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoIOState.msg" "duco_msgs/DucoDigital:duco_msgs/DucoAnalog"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoAnalog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/duco_msgs
)
_generate_msg_cpp(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoDigital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/duco_msgs
)
_generate_msg_cpp(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoIOState.msg"
  "${MSG_I_FLAGS}"
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoDigital.msg;/home/shenyi/duco_ws/src/duco_msgs/msg/DucoAnalog.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/duco_msgs
)
_generate_msg_cpp(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoRobotState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/duco_msgs
)

### Generating Services
_generate_srv_cpp(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoRobotStates.srv"
  "${MSG_I_FLAGS}"
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoRobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/duco_msgs
)
_generate_srv_cpp(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoIOStates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/duco_msgs
)
_generate_srv_cpp(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetIK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/duco_msgs
)
_generate_srv_cpp(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/duco_msgs
)
_generate_srv_cpp(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetFK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/duco_msgs
)

### Generating Module File
_generate_module_cpp(duco_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/duco_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(duco_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(duco_msgs_generate_messages duco_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoRobotStates.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_cpp _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoRobotState.msg" NAME_WE)
add_dependencies(duco_msgs_generate_messages_cpp _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoCommand.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_cpp _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoIOStates.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_cpp _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetIK.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_cpp _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetFK.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_cpp _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoAnalog.msg" NAME_WE)
add_dependencies(duco_msgs_generate_messages_cpp _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoDigital.msg" NAME_WE)
add_dependencies(duco_msgs_generate_messages_cpp _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoIOState.msg" NAME_WE)
add_dependencies(duco_msgs_generate_messages_cpp _duco_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(duco_msgs_gencpp)
add_dependencies(duco_msgs_gencpp duco_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS duco_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoAnalog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/duco_msgs
)
_generate_msg_eus(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoDigital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/duco_msgs
)
_generate_msg_eus(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoIOState.msg"
  "${MSG_I_FLAGS}"
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoDigital.msg;/home/shenyi/duco_ws/src/duco_msgs/msg/DucoAnalog.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/duco_msgs
)
_generate_msg_eus(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoRobotState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/duco_msgs
)

### Generating Services
_generate_srv_eus(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoRobotStates.srv"
  "${MSG_I_FLAGS}"
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoRobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/duco_msgs
)
_generate_srv_eus(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoIOStates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/duco_msgs
)
_generate_srv_eus(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetIK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/duco_msgs
)
_generate_srv_eus(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/duco_msgs
)
_generate_srv_eus(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetFK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/duco_msgs
)

### Generating Module File
_generate_module_eus(duco_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/duco_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(duco_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(duco_msgs_generate_messages duco_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoRobotStates.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_eus _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoRobotState.msg" NAME_WE)
add_dependencies(duco_msgs_generate_messages_eus _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoCommand.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_eus _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoIOStates.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_eus _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetIK.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_eus _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetFK.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_eus _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoAnalog.msg" NAME_WE)
add_dependencies(duco_msgs_generate_messages_eus _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoDigital.msg" NAME_WE)
add_dependencies(duco_msgs_generate_messages_eus _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoIOState.msg" NAME_WE)
add_dependencies(duco_msgs_generate_messages_eus _duco_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(duco_msgs_geneus)
add_dependencies(duco_msgs_geneus duco_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS duco_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoAnalog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/duco_msgs
)
_generate_msg_lisp(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoDigital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/duco_msgs
)
_generate_msg_lisp(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoIOState.msg"
  "${MSG_I_FLAGS}"
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoDigital.msg;/home/shenyi/duco_ws/src/duco_msgs/msg/DucoAnalog.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/duco_msgs
)
_generate_msg_lisp(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoRobotState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/duco_msgs
)

### Generating Services
_generate_srv_lisp(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoRobotStates.srv"
  "${MSG_I_FLAGS}"
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoRobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/duco_msgs
)
_generate_srv_lisp(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoIOStates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/duco_msgs
)
_generate_srv_lisp(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetIK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/duco_msgs
)
_generate_srv_lisp(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/duco_msgs
)
_generate_srv_lisp(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetFK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/duco_msgs
)

### Generating Module File
_generate_module_lisp(duco_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/duco_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(duco_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(duco_msgs_generate_messages duco_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoRobotStates.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_lisp _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoRobotState.msg" NAME_WE)
add_dependencies(duco_msgs_generate_messages_lisp _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoCommand.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_lisp _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoIOStates.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_lisp _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetIK.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_lisp _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetFK.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_lisp _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoAnalog.msg" NAME_WE)
add_dependencies(duco_msgs_generate_messages_lisp _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoDigital.msg" NAME_WE)
add_dependencies(duco_msgs_generate_messages_lisp _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoIOState.msg" NAME_WE)
add_dependencies(duco_msgs_generate_messages_lisp _duco_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(duco_msgs_genlisp)
add_dependencies(duco_msgs_genlisp duco_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS duco_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoAnalog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/duco_msgs
)
_generate_msg_nodejs(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoDigital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/duco_msgs
)
_generate_msg_nodejs(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoIOState.msg"
  "${MSG_I_FLAGS}"
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoDigital.msg;/home/shenyi/duco_ws/src/duco_msgs/msg/DucoAnalog.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/duco_msgs
)
_generate_msg_nodejs(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoRobotState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/duco_msgs
)

### Generating Services
_generate_srv_nodejs(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoRobotStates.srv"
  "${MSG_I_FLAGS}"
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoRobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/duco_msgs
)
_generate_srv_nodejs(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoIOStates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/duco_msgs
)
_generate_srv_nodejs(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetIK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/duco_msgs
)
_generate_srv_nodejs(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/duco_msgs
)
_generate_srv_nodejs(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetFK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/duco_msgs
)

### Generating Module File
_generate_module_nodejs(duco_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/duco_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(duco_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(duco_msgs_generate_messages duco_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoRobotStates.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_nodejs _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoRobotState.msg" NAME_WE)
add_dependencies(duco_msgs_generate_messages_nodejs _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoCommand.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_nodejs _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoIOStates.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_nodejs _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetIK.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_nodejs _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetFK.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_nodejs _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoAnalog.msg" NAME_WE)
add_dependencies(duco_msgs_generate_messages_nodejs _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoDigital.msg" NAME_WE)
add_dependencies(duco_msgs_generate_messages_nodejs _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoIOState.msg" NAME_WE)
add_dependencies(duco_msgs_generate_messages_nodejs _duco_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(duco_msgs_gennodejs)
add_dependencies(duco_msgs_gennodejs duco_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS duco_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoAnalog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/duco_msgs
)
_generate_msg_py(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoDigital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/duco_msgs
)
_generate_msg_py(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoIOState.msg"
  "${MSG_I_FLAGS}"
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoDigital.msg;/home/shenyi/duco_ws/src/duco_msgs/msg/DucoAnalog.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/duco_msgs
)
_generate_msg_py(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoRobotState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/duco_msgs
)

### Generating Services
_generate_srv_py(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoRobotStates.srv"
  "${MSG_I_FLAGS}"
  "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoRobotState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/duco_msgs
)
_generate_srv_py(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoIOStates.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/duco_msgs
)
_generate_srv_py(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetIK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/duco_msgs
)
_generate_srv_py(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/duco_msgs
)
_generate_srv_py(duco_msgs
  "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetFK.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/duco_msgs
)

### Generating Module File
_generate_module_py(duco_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/duco_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(duco_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(duco_msgs_generate_messages duco_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoRobotStates.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_py _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoRobotState.msg" NAME_WE)
add_dependencies(duco_msgs_generate_messages_py _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoCommand.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_py _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoIOStates.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_py _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetIK.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_py _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/srv/DucoGetFK.srv" NAME_WE)
add_dependencies(duco_msgs_generate_messages_py _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoAnalog.msg" NAME_WE)
add_dependencies(duco_msgs_generate_messages_py _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoDigital.msg" NAME_WE)
add_dependencies(duco_msgs_generate_messages_py _duco_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shenyi/duco_ws/src/duco_msgs/msg/DucoIOState.msg" NAME_WE)
add_dependencies(duco_msgs_generate_messages_py _duco_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(duco_msgs_genpy)
add_dependencies(duco_msgs_genpy duco_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS duco_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/duco_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/duco_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(duco_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/duco_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/duco_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(duco_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/duco_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/duco_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(duco_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/duco_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/duco_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(duco_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/duco_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/duco_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/duco_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(duco_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
