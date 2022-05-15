# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "obs_sub: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iobs_sub:/home/ww/smart/obs_tr_node/src/obs_sub/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(obs_sub_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ww/smart/obs_tr_node/src/obs_sub/msg/obs_msg.msg" NAME_WE)
add_custom_target(_obs_sub_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "obs_sub" "/home/ww/smart/obs_tr_node/src/obs_sub/msg/obs_msg.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(obs_sub
  "/home/ww/smart/obs_tr_node/src/obs_sub/msg/obs_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/obs_sub
)

### Generating Services

### Generating Module File
_generate_module_cpp(obs_sub
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/obs_sub
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(obs_sub_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(obs_sub_generate_messages obs_sub_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ww/smart/obs_tr_node/src/obs_sub/msg/obs_msg.msg" NAME_WE)
add_dependencies(obs_sub_generate_messages_cpp _obs_sub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(obs_sub_gencpp)
add_dependencies(obs_sub_gencpp obs_sub_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS obs_sub_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(obs_sub
  "/home/ww/smart/obs_tr_node/src/obs_sub/msg/obs_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/obs_sub
)

### Generating Services

### Generating Module File
_generate_module_eus(obs_sub
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/obs_sub
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(obs_sub_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(obs_sub_generate_messages obs_sub_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ww/smart/obs_tr_node/src/obs_sub/msg/obs_msg.msg" NAME_WE)
add_dependencies(obs_sub_generate_messages_eus _obs_sub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(obs_sub_geneus)
add_dependencies(obs_sub_geneus obs_sub_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS obs_sub_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(obs_sub
  "/home/ww/smart/obs_tr_node/src/obs_sub/msg/obs_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/obs_sub
)

### Generating Services

### Generating Module File
_generate_module_lisp(obs_sub
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/obs_sub
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(obs_sub_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(obs_sub_generate_messages obs_sub_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ww/smart/obs_tr_node/src/obs_sub/msg/obs_msg.msg" NAME_WE)
add_dependencies(obs_sub_generate_messages_lisp _obs_sub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(obs_sub_genlisp)
add_dependencies(obs_sub_genlisp obs_sub_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS obs_sub_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(obs_sub
  "/home/ww/smart/obs_tr_node/src/obs_sub/msg/obs_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/obs_sub
)

### Generating Services

### Generating Module File
_generate_module_nodejs(obs_sub
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/obs_sub
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(obs_sub_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(obs_sub_generate_messages obs_sub_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ww/smart/obs_tr_node/src/obs_sub/msg/obs_msg.msg" NAME_WE)
add_dependencies(obs_sub_generate_messages_nodejs _obs_sub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(obs_sub_gennodejs)
add_dependencies(obs_sub_gennodejs obs_sub_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS obs_sub_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(obs_sub
  "/home/ww/smart/obs_tr_node/src/obs_sub/msg/obs_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/obs_sub
)

### Generating Services

### Generating Module File
_generate_module_py(obs_sub
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/obs_sub
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(obs_sub_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(obs_sub_generate_messages obs_sub_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ww/smart/obs_tr_node/src/obs_sub/msg/obs_msg.msg" NAME_WE)
add_dependencies(obs_sub_generate_messages_py _obs_sub_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(obs_sub_genpy)
add_dependencies(obs_sub_genpy obs_sub_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS obs_sub_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/obs_sub)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/obs_sub
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(obs_sub_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/obs_sub)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/obs_sub
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(obs_sub_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/obs_sub)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/obs_sub
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(obs_sub_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/obs_sub)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/obs_sub
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(obs_sub_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/obs_sub)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/obs_sub\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/obs_sub
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(obs_sub_generate_messages_py std_msgs_generate_messages_py)
endif()
