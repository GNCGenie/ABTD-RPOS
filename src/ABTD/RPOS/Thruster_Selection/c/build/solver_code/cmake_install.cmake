# Install script for directory: /home/Inspecity/Codes/RPOS_control/src/air_table_demo/Thruster_Selection/c/solver_code

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libecos.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libecos.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libecos.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/Thruster_Selection/c/build/out/libecos.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libecos.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libecos.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libecos.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ecos" TYPE FILE FILES
    "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/Thruster_Selection/c/solver_code/external/SuiteSparse_config/SuiteSparse_config.h"
    "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/Thruster_Selection/c/solver_code/include/cone.h"
    "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/Thruster_Selection/c/solver_code/include/ctrlc.h"
    "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/Thruster_Selection/c/solver_code/include/data.h"
    "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/Thruster_Selection/c/solver_code/include/ecos.h"
    "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/Thruster_Selection/c/solver_code/include/ecos_bb.h"
    "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/Thruster_Selection/c/solver_code/include/equil.h"
    "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/Thruster_Selection/c/solver_code/include/expcone.h"
    "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/Thruster_Selection/c/solver_code/include/glblopts.h"
    "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/Thruster_Selection/c/solver_code/include/kkt.h"
    "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/Thruster_Selection/c/solver_code/include/spla.h"
    "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/Thruster_Selection/c/solver_code/include/splamm.h"
    "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/Thruster_Selection/c/solver_code/include/timer.h"
    "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/Thruster_Selection/c/solver_code/include/wright_omega.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ecos/ecos-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ecos/ecos-targets.cmake"
         "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/Thruster_Selection/c/build/solver_code/CMakeFiles/Export/1486f10f4b53bd9f1a0cd8f44f37b237/ecos-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ecos/ecos-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/ecos/ecos-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ecos" TYPE FILE FILES "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/Thruster_Selection/c/build/solver_code/CMakeFiles/Export/1486f10f4b53bd9f1a0cd8f44f37b237/ecos-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ecos" TYPE FILE FILES "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/Thruster_Selection/c/build/solver_code/CMakeFiles/Export/1486f10f4b53bd9f1a0cd8f44f37b237/ecos-targets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ecos" TYPE FILE FILES "/home/Inspecity/Codes/RPOS_control/src/air_table_demo/Thruster_Selection/c/build/solver_code/ecos-config.cmake")
endif()

