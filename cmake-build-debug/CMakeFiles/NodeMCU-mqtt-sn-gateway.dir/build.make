# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /home/bele/Jetbrain_IDE/clion-2017.1.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/bele/Jetbrain_IDE/clion-2017.1.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/flags.make

CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.o: CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/flags.make
CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.o: ../src/main/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.o"
	/home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.o -c /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/src/main/main.cpp

CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.i"
	/home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/src/main/main.cpp > CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.i

CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.s"
	/home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/src/main/main.cpp -o CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.s

CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.o.requires:

.PHONY : CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.o.requires

CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.o.provides: CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/build.make CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.o.provides.build
.PHONY : CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.o.provides

CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.o.provides.build: CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.o


# Object files for target NodeMCU-mqtt-sn-gateway
NodeMCU__mqtt__sn__gateway_OBJECTS = \
"CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.o"

# External object files for target NodeMCU-mqtt-sn-gateway
NodeMCU__mqtt__sn__gateway_EXTERNAL_OBJECTS =

NodeMCU-mqtt-sn-gateway: CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.o
NodeMCU-mqtt-sn-gateway: CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/build.make
NodeMCU-mqtt-sn-gateway: CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable NodeMCU-mqtt-sn-gateway"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/build: NodeMCU-mqtt-sn-gateway

.PHONY : CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/build

CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/requires: CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/src/main/main.cpp.o.requires

.PHONY : CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/requires

CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/cmake_clean.cmake
.PHONY : CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/clean

CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/depend:
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/NodeMCU-mqtt-sn-gateway.dir/depend

