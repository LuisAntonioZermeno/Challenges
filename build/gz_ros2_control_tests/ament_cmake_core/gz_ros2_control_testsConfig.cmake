# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_gz_ros2_control_tests_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED gz_ros2_control_tests_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(gz_ros2_control_tests_FOUND FALSE)
  elseif(NOT gz_ros2_control_tests_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(gz_ros2_control_tests_FOUND FALSE)
  endif()
  return()
endif()
set(_gz_ros2_control_tests_CONFIG_INCLUDED TRUE)

# output package information
if(NOT gz_ros2_control_tests_FIND_QUIETLY)
  message(STATUS "Found gz_ros2_control_tests: 0.7.5 (${gz_ros2_control_tests_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'gz_ros2_control_tests' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${gz_ros2_control_tests_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(gz_ros2_control_tests_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${gz_ros2_control_tests_DIR}/${_extra}")
endforeach()
