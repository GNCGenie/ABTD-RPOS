# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build

# Include any dependencies generated for this target.
include solver_code/CMakeFiles/scsindir.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include solver_code/CMakeFiles/scsindir.dir/compiler_depend.make

# Include the progress variables for this target.
include solver_code/CMakeFiles/scsindir.dir/progress.make

# Include the compile flags for this target's objects.
include solver_code/CMakeFiles/scsindir.dir/flags.make

solver_code/CMakeFiles/scsindir.dir/src/aa.c.o: solver_code/CMakeFiles/scsindir.dir/flags.make
solver_code/CMakeFiles/scsindir.dir/src/aa.c.o: /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/aa.c
solver_code/CMakeFiles/scsindir.dir/src/aa.c.o: solver_code/CMakeFiles/scsindir.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object solver_code/CMakeFiles/scsindir.dir/src/aa.c.o"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT solver_code/CMakeFiles/scsindir.dir/src/aa.c.o -MF CMakeFiles/scsindir.dir/src/aa.c.o.d -o CMakeFiles/scsindir.dir/src/aa.c.o -c /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/aa.c

solver_code/CMakeFiles/scsindir.dir/src/aa.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/scsindir.dir/src/aa.c.i"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/aa.c > CMakeFiles/scsindir.dir/src/aa.c.i

solver_code/CMakeFiles/scsindir.dir/src/aa.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/scsindir.dir/src/aa.c.s"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/aa.c -o CMakeFiles/scsindir.dir/src/aa.c.s

solver_code/CMakeFiles/scsindir.dir/src/cones.c.o: solver_code/CMakeFiles/scsindir.dir/flags.make
solver_code/CMakeFiles/scsindir.dir/src/cones.c.o: /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/cones.c
solver_code/CMakeFiles/scsindir.dir/src/cones.c.o: solver_code/CMakeFiles/scsindir.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object solver_code/CMakeFiles/scsindir.dir/src/cones.c.o"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT solver_code/CMakeFiles/scsindir.dir/src/cones.c.o -MF CMakeFiles/scsindir.dir/src/cones.c.o.d -o CMakeFiles/scsindir.dir/src/cones.c.o -c /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/cones.c

solver_code/CMakeFiles/scsindir.dir/src/cones.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/scsindir.dir/src/cones.c.i"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/cones.c > CMakeFiles/scsindir.dir/src/cones.c.i

solver_code/CMakeFiles/scsindir.dir/src/cones.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/scsindir.dir/src/cones.c.s"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/cones.c -o CMakeFiles/scsindir.dir/src/cones.c.s

solver_code/CMakeFiles/scsindir.dir/src/ctrlc.c.o: solver_code/CMakeFiles/scsindir.dir/flags.make
solver_code/CMakeFiles/scsindir.dir/src/ctrlc.c.o: /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/ctrlc.c
solver_code/CMakeFiles/scsindir.dir/src/ctrlc.c.o: solver_code/CMakeFiles/scsindir.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object solver_code/CMakeFiles/scsindir.dir/src/ctrlc.c.o"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT solver_code/CMakeFiles/scsindir.dir/src/ctrlc.c.o -MF CMakeFiles/scsindir.dir/src/ctrlc.c.o.d -o CMakeFiles/scsindir.dir/src/ctrlc.c.o -c /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/ctrlc.c

solver_code/CMakeFiles/scsindir.dir/src/ctrlc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/scsindir.dir/src/ctrlc.c.i"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/ctrlc.c > CMakeFiles/scsindir.dir/src/ctrlc.c.i

solver_code/CMakeFiles/scsindir.dir/src/ctrlc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/scsindir.dir/src/ctrlc.c.s"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/ctrlc.c -o CMakeFiles/scsindir.dir/src/ctrlc.c.s

solver_code/CMakeFiles/scsindir.dir/src/linalg.c.o: solver_code/CMakeFiles/scsindir.dir/flags.make
solver_code/CMakeFiles/scsindir.dir/src/linalg.c.o: /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/linalg.c
solver_code/CMakeFiles/scsindir.dir/src/linalg.c.o: solver_code/CMakeFiles/scsindir.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object solver_code/CMakeFiles/scsindir.dir/src/linalg.c.o"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT solver_code/CMakeFiles/scsindir.dir/src/linalg.c.o -MF CMakeFiles/scsindir.dir/src/linalg.c.o.d -o CMakeFiles/scsindir.dir/src/linalg.c.o -c /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/linalg.c

solver_code/CMakeFiles/scsindir.dir/src/linalg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/scsindir.dir/src/linalg.c.i"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/linalg.c > CMakeFiles/scsindir.dir/src/linalg.c.i

solver_code/CMakeFiles/scsindir.dir/src/linalg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/scsindir.dir/src/linalg.c.s"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/linalg.c -o CMakeFiles/scsindir.dir/src/linalg.c.s

solver_code/CMakeFiles/scsindir.dir/src/normalize.c.o: solver_code/CMakeFiles/scsindir.dir/flags.make
solver_code/CMakeFiles/scsindir.dir/src/normalize.c.o: /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/normalize.c
solver_code/CMakeFiles/scsindir.dir/src/normalize.c.o: solver_code/CMakeFiles/scsindir.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object solver_code/CMakeFiles/scsindir.dir/src/normalize.c.o"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT solver_code/CMakeFiles/scsindir.dir/src/normalize.c.o -MF CMakeFiles/scsindir.dir/src/normalize.c.o.d -o CMakeFiles/scsindir.dir/src/normalize.c.o -c /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/normalize.c

solver_code/CMakeFiles/scsindir.dir/src/normalize.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/scsindir.dir/src/normalize.c.i"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/normalize.c > CMakeFiles/scsindir.dir/src/normalize.c.i

solver_code/CMakeFiles/scsindir.dir/src/normalize.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/scsindir.dir/src/normalize.c.s"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/normalize.c -o CMakeFiles/scsindir.dir/src/normalize.c.s

solver_code/CMakeFiles/scsindir.dir/src/rw.c.o: solver_code/CMakeFiles/scsindir.dir/flags.make
solver_code/CMakeFiles/scsindir.dir/src/rw.c.o: /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/rw.c
solver_code/CMakeFiles/scsindir.dir/src/rw.c.o: solver_code/CMakeFiles/scsindir.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object solver_code/CMakeFiles/scsindir.dir/src/rw.c.o"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT solver_code/CMakeFiles/scsindir.dir/src/rw.c.o -MF CMakeFiles/scsindir.dir/src/rw.c.o.d -o CMakeFiles/scsindir.dir/src/rw.c.o -c /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/rw.c

solver_code/CMakeFiles/scsindir.dir/src/rw.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/scsindir.dir/src/rw.c.i"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/rw.c > CMakeFiles/scsindir.dir/src/rw.c.i

solver_code/CMakeFiles/scsindir.dir/src/rw.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/scsindir.dir/src/rw.c.s"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/rw.c -o CMakeFiles/scsindir.dir/src/rw.c.s

solver_code/CMakeFiles/scsindir.dir/src/scs.c.o: solver_code/CMakeFiles/scsindir.dir/flags.make
solver_code/CMakeFiles/scsindir.dir/src/scs.c.o: /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/scs.c
solver_code/CMakeFiles/scsindir.dir/src/scs.c.o: solver_code/CMakeFiles/scsindir.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object solver_code/CMakeFiles/scsindir.dir/src/scs.c.o"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT solver_code/CMakeFiles/scsindir.dir/src/scs.c.o -MF CMakeFiles/scsindir.dir/src/scs.c.o.d -o CMakeFiles/scsindir.dir/src/scs.c.o -c /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/scs.c

solver_code/CMakeFiles/scsindir.dir/src/scs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/scsindir.dir/src/scs.c.i"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/scs.c > CMakeFiles/scsindir.dir/src/scs.c.i

solver_code/CMakeFiles/scsindir.dir/src/scs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/scsindir.dir/src/scs.c.s"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/scs.c -o CMakeFiles/scsindir.dir/src/scs.c.s

solver_code/CMakeFiles/scsindir.dir/src/scs_version.c.o: solver_code/CMakeFiles/scsindir.dir/flags.make
solver_code/CMakeFiles/scsindir.dir/src/scs_version.c.o: /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/scs_version.c
solver_code/CMakeFiles/scsindir.dir/src/scs_version.c.o: solver_code/CMakeFiles/scsindir.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object solver_code/CMakeFiles/scsindir.dir/src/scs_version.c.o"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT solver_code/CMakeFiles/scsindir.dir/src/scs_version.c.o -MF CMakeFiles/scsindir.dir/src/scs_version.c.o.d -o CMakeFiles/scsindir.dir/src/scs_version.c.o -c /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/scs_version.c

solver_code/CMakeFiles/scsindir.dir/src/scs_version.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/scsindir.dir/src/scs_version.c.i"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/scs_version.c > CMakeFiles/scsindir.dir/src/scs_version.c.i

solver_code/CMakeFiles/scsindir.dir/src/scs_version.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/scsindir.dir/src/scs_version.c.s"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/scs_version.c -o CMakeFiles/scsindir.dir/src/scs_version.c.s

solver_code/CMakeFiles/scsindir.dir/src/util.c.o: solver_code/CMakeFiles/scsindir.dir/flags.make
solver_code/CMakeFiles/scsindir.dir/src/util.c.o: /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/util.c
solver_code/CMakeFiles/scsindir.dir/src/util.c.o: solver_code/CMakeFiles/scsindir.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object solver_code/CMakeFiles/scsindir.dir/src/util.c.o"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT solver_code/CMakeFiles/scsindir.dir/src/util.c.o -MF CMakeFiles/scsindir.dir/src/util.c.o.d -o CMakeFiles/scsindir.dir/src/util.c.o -c /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/util.c

solver_code/CMakeFiles/scsindir.dir/src/util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/scsindir.dir/src/util.c.i"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/util.c > CMakeFiles/scsindir.dir/src/util.c.i

solver_code/CMakeFiles/scsindir.dir/src/util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/scsindir.dir/src/util.c.s"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/src/util.c -o CMakeFiles/scsindir.dir/src/util.c.s

solver_code/CMakeFiles/scsindir.dir/linsys/csparse.c.o: solver_code/CMakeFiles/scsindir.dir/flags.make
solver_code/CMakeFiles/scsindir.dir/linsys/csparse.c.o: /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/linsys/csparse.c
solver_code/CMakeFiles/scsindir.dir/linsys/csparse.c.o: solver_code/CMakeFiles/scsindir.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object solver_code/CMakeFiles/scsindir.dir/linsys/csparse.c.o"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT solver_code/CMakeFiles/scsindir.dir/linsys/csparse.c.o -MF CMakeFiles/scsindir.dir/linsys/csparse.c.o.d -o CMakeFiles/scsindir.dir/linsys/csparse.c.o -c /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/linsys/csparse.c

solver_code/CMakeFiles/scsindir.dir/linsys/csparse.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/scsindir.dir/linsys/csparse.c.i"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/linsys/csparse.c > CMakeFiles/scsindir.dir/linsys/csparse.c.i

solver_code/CMakeFiles/scsindir.dir/linsys/csparse.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/scsindir.dir/linsys/csparse.c.s"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/linsys/csparse.c -o CMakeFiles/scsindir.dir/linsys/csparse.c.s

solver_code/CMakeFiles/scsindir.dir/linsys/scs_matrix.c.o: solver_code/CMakeFiles/scsindir.dir/flags.make
solver_code/CMakeFiles/scsindir.dir/linsys/scs_matrix.c.o: /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/linsys/scs_matrix.c
solver_code/CMakeFiles/scsindir.dir/linsys/scs_matrix.c.o: solver_code/CMakeFiles/scsindir.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object solver_code/CMakeFiles/scsindir.dir/linsys/scs_matrix.c.o"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT solver_code/CMakeFiles/scsindir.dir/linsys/scs_matrix.c.o -MF CMakeFiles/scsindir.dir/linsys/scs_matrix.c.o.d -o CMakeFiles/scsindir.dir/linsys/scs_matrix.c.o -c /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/linsys/scs_matrix.c

solver_code/CMakeFiles/scsindir.dir/linsys/scs_matrix.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/scsindir.dir/linsys/scs_matrix.c.i"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/linsys/scs_matrix.c > CMakeFiles/scsindir.dir/linsys/scs_matrix.c.i

solver_code/CMakeFiles/scsindir.dir/linsys/scs_matrix.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/scsindir.dir/linsys/scs_matrix.c.s"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/linsys/scs_matrix.c -o CMakeFiles/scsindir.dir/linsys/scs_matrix.c.s

solver_code/CMakeFiles/scsindir.dir/linsys/cpu/indirect/private.c.o: solver_code/CMakeFiles/scsindir.dir/flags.make
solver_code/CMakeFiles/scsindir.dir/linsys/cpu/indirect/private.c.o: /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/linsys/cpu/indirect/private.c
solver_code/CMakeFiles/scsindir.dir/linsys/cpu/indirect/private.c.o: solver_code/CMakeFiles/scsindir.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object solver_code/CMakeFiles/scsindir.dir/linsys/cpu/indirect/private.c.o"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT solver_code/CMakeFiles/scsindir.dir/linsys/cpu/indirect/private.c.o -MF CMakeFiles/scsindir.dir/linsys/cpu/indirect/private.c.o.d -o CMakeFiles/scsindir.dir/linsys/cpu/indirect/private.c.o -c /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/linsys/cpu/indirect/private.c

solver_code/CMakeFiles/scsindir.dir/linsys/cpu/indirect/private.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/scsindir.dir/linsys/cpu/indirect/private.c.i"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/linsys/cpu/indirect/private.c > CMakeFiles/scsindir.dir/linsys/cpu/indirect/private.c.i

solver_code/CMakeFiles/scsindir.dir/linsys/cpu/indirect/private.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/scsindir.dir/linsys/cpu/indirect/private.c.s"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code/linsys/cpu/indirect/private.c -o CMakeFiles/scsindir.dir/linsys/cpu/indirect/private.c.s

# Object files for target scsindir
scsindir_OBJECTS = \
"CMakeFiles/scsindir.dir/src/aa.c.o" \
"CMakeFiles/scsindir.dir/src/cones.c.o" \
"CMakeFiles/scsindir.dir/src/ctrlc.c.o" \
"CMakeFiles/scsindir.dir/src/linalg.c.o" \
"CMakeFiles/scsindir.dir/src/normalize.c.o" \
"CMakeFiles/scsindir.dir/src/rw.c.o" \
"CMakeFiles/scsindir.dir/src/scs.c.o" \
"CMakeFiles/scsindir.dir/src/scs_version.c.o" \
"CMakeFiles/scsindir.dir/src/util.c.o" \
"CMakeFiles/scsindir.dir/linsys/csparse.c.o" \
"CMakeFiles/scsindir.dir/linsys/scs_matrix.c.o" \
"CMakeFiles/scsindir.dir/linsys/cpu/indirect/private.c.o"

# External object files for target scsindir
scsindir_EXTERNAL_OBJECTS =

lib/libscsindir.so.3.2.0: solver_code/CMakeFiles/scsindir.dir/src/aa.c.o
lib/libscsindir.so.3.2.0: solver_code/CMakeFiles/scsindir.dir/src/cones.c.o
lib/libscsindir.so.3.2.0: solver_code/CMakeFiles/scsindir.dir/src/ctrlc.c.o
lib/libscsindir.so.3.2.0: solver_code/CMakeFiles/scsindir.dir/src/linalg.c.o
lib/libscsindir.so.3.2.0: solver_code/CMakeFiles/scsindir.dir/src/normalize.c.o
lib/libscsindir.so.3.2.0: solver_code/CMakeFiles/scsindir.dir/src/rw.c.o
lib/libscsindir.so.3.2.0: solver_code/CMakeFiles/scsindir.dir/src/scs.c.o
lib/libscsindir.so.3.2.0: solver_code/CMakeFiles/scsindir.dir/src/scs_version.c.o
lib/libscsindir.so.3.2.0: solver_code/CMakeFiles/scsindir.dir/src/util.c.o
lib/libscsindir.so.3.2.0: solver_code/CMakeFiles/scsindir.dir/linsys/csparse.c.o
lib/libscsindir.so.3.2.0: solver_code/CMakeFiles/scsindir.dir/linsys/scs_matrix.c.o
lib/libscsindir.so.3.2.0: solver_code/CMakeFiles/scsindir.dir/linsys/cpu/indirect/private.c.o
lib/libscsindir.so.3.2.0: solver_code/CMakeFiles/scsindir.dir/build.make
lib/libscsindir.so.3.2.0: solver_code/CMakeFiles/scsindir.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking C shared library ../lib/libscsindir.so"
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scsindir.dir/link.txt --verbose=$(VERBOSE)
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && $(CMAKE_COMMAND) -E cmake_symlink_library ../lib/libscsindir.so.3.2.0 ../lib/libscsindir.so.3.2.0 ../lib/libscsindir.so

lib/libscsindir.so: lib/libscsindir.so.3.2.0
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libscsindir.so

# Rule to build all files generated by this target.
solver_code/CMakeFiles/scsindir.dir/build: lib/libscsindir.so
.PHONY : solver_code/CMakeFiles/scsindir.dir/build

solver_code/CMakeFiles/scsindir.dir/clean:
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code && $(CMAKE_COMMAND) -P CMakeFiles/scsindir.dir/cmake_clean.cmake
.PHONY : solver_code/CMakeFiles/scsindir.dir/clean

solver_code/CMakeFiles/scsindir.dir/depend:
	cd /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/solver_code /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code /home/Inspecity/Codes/RPOS_control/src/air_table_demo/MPC_Euler/c/build/solver_code/CMakeFiles/scsindir.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : solver_code/CMakeFiles/scsindir.dir/depend

