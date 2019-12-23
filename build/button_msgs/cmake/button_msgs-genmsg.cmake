# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "button_msgs: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ibutton_msgs:/home/dylan/catkin__ws/src/button_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(button_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dylan/catkin__ws/src/button_msgs/msg/button.msg" NAME_WE)
add_custom_target(_button_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "button_msgs" "/home/dylan/catkin__ws/src/button_msgs/msg/button.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(button_msgs
  "/home/dylan/catkin__ws/src/button_msgs/msg/button.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/button_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(button_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/button_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(button_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(button_msgs_generate_messages button_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dylan/catkin__ws/src/button_msgs/msg/button.msg" NAME_WE)
add_dependencies(button_msgs_generate_messages_cpp _button_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(button_msgs_gencpp)
add_dependencies(button_msgs_gencpp button_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS button_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(button_msgs
  "/home/dylan/catkin__ws/src/button_msgs/msg/button.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/button_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(button_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/button_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(button_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(button_msgs_generate_messages button_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dylan/catkin__ws/src/button_msgs/msg/button.msg" NAME_WE)
add_dependencies(button_msgs_generate_messages_eus _button_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(button_msgs_geneus)
add_dependencies(button_msgs_geneus button_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS button_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(button_msgs
  "/home/dylan/catkin__ws/src/button_msgs/msg/button.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/button_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(button_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/button_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(button_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(button_msgs_generate_messages button_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dylan/catkin__ws/src/button_msgs/msg/button.msg" NAME_WE)
add_dependencies(button_msgs_generate_messages_lisp _button_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(button_msgs_genlisp)
add_dependencies(button_msgs_genlisp button_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS button_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(button_msgs
  "/home/dylan/catkin__ws/src/button_msgs/msg/button.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/button_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(button_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/button_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(button_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(button_msgs_generate_messages button_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dylan/catkin__ws/src/button_msgs/msg/button.msg" NAME_WE)
add_dependencies(button_msgs_generate_messages_nodejs _button_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(button_msgs_gennodejs)
add_dependencies(button_msgs_gennodejs button_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS button_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(button_msgs
  "/home/dylan/catkin__ws/src/button_msgs/msg/button.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/button_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(button_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/button_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(button_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(button_msgs_generate_messages button_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dylan/catkin__ws/src/button_msgs/msg/button.msg" NAME_WE)
add_dependencies(button_msgs_generate_messages_py _button_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(button_msgs_genpy)
add_dependencies(button_msgs_genpy button_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS button_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/button_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/button_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/button_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/button_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/button_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/button_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/button_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/button_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/button_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/button_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/button_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
