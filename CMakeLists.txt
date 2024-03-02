cmake_minimum_required(VERSION 3.12)
project(RPOS VERSION 1.0.0)

# Output Generated build files to bin
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# Find packages
# Casadi
#find_package(casadi REQUIRED)

# Set Standard Libs to compiled into binary
set(CMAKE_EXE_LINKER_FLAGS "-static-libgcc -static-libstdc++")

# Get all files in src directory
file(GLOB SRC_FILES src/*.cpp)

# Add executable
# add_executable(tmp.out src/camera_calibration.cpp)
foreach(SRC_FILE ${SRC_FILES})
    get_filename_component(EXECUTABLE_NAME ${SRC_FILE} NAME_WE)

    add_executable(${EXECUTABLE_NAME} ${SRC_FILE})

    # Link against casadi library
    #    target_link_libraries(${EXECUTABLE_NAME} casadi)
endforeach()

