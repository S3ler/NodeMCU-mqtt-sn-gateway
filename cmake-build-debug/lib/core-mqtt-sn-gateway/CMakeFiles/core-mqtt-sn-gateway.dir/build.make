# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /home/bele/JetBrain/clion-2017.1/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/bele/JetBrain/clion-2017.1/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug

# Include any dependencies generated for this target.
include lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/depend.make

# Include the progress variables for this target.
include lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/progress.make

# Include the compile flags for this target's objects.
include lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/flags.make

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.o: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/flags.make
lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.o: ../lib/core-mqtt-sn-gateway/src/CoreImpl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.o"
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && /home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.o -c /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/lib/core-mqtt-sn-gateway/src/CoreImpl.cpp

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.i: cmake_force
	@echo "Preprocessing CXX source to CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.i"
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && /home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/lib/core-mqtt-sn-gateway/src/CoreImpl.cpp > CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.i

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.s: cmake_force
	@echo "Compiling CXX source to assembly CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.s"
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && /home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/lib/core-mqtt-sn-gateway/src/CoreImpl.cpp -o CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.s

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.o.requires:

.PHONY : lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.o.requires

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.o.provides: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.o.requires
	$(MAKE) -f lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/build.make lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.o.provides.build
.PHONY : lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.o.provides

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.o.provides.build: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.o


lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.o: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/flags.make
lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.o: ../lib/core-mqtt-sn-gateway/src/Gateway.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.o"
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && /home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.o -c /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/lib/core-mqtt-sn-gateway/src/Gateway.cpp

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.i: cmake_force
	@echo "Preprocessing CXX source to CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.i"
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && /home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/lib/core-mqtt-sn-gateway/src/Gateway.cpp > CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.i

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.s: cmake_force
	@echo "Compiling CXX source to assembly CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.s"
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && /home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/lib/core-mqtt-sn-gateway/src/Gateway.cpp -o CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.s

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.o.requires:

.PHONY : lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.o.requires

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.o.provides: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.o.requires
	$(MAKE) -f lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/build.make lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.o.provides.build
.PHONY : lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.o.provides

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.o.provides.build: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.o


lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.o: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/flags.make
lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.o: ../lib/core-mqtt-sn-gateway/src/MqttMessageHandlerInterface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.o"
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && /home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.o -c /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/lib/core-mqtt-sn-gateway/src/MqttMessageHandlerInterface.cpp

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.i: cmake_force
	@echo "Preprocessing CXX source to CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.i"
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && /home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/lib/core-mqtt-sn-gateway/src/MqttMessageHandlerInterface.cpp > CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.i

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.s: cmake_force
	@echo "Compiling CXX source to assembly CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.s"
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && /home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/lib/core-mqtt-sn-gateway/src/MqttMessageHandlerInterface.cpp -o CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.s

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.o.requires:

.PHONY : lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.o.requires

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.o.provides: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.o.requires
	$(MAKE) -f lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/build.make lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.o.provides.build
.PHONY : lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.o.provides

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.o.provides.build: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.o


lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.o: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/flags.make
lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.o: ../lib/core-mqtt-sn-gateway/src/MqttSnMessageHandler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.o"
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && /home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.o -c /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/lib/core-mqtt-sn-gateway/src/MqttSnMessageHandler.cpp

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.i: cmake_force
	@echo "Preprocessing CXX source to CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.i"
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && /home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/lib/core-mqtt-sn-gateway/src/MqttSnMessageHandler.cpp > CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.i

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.s: cmake_force
	@echo "Compiling CXX source to assembly CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.s"
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && /home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/lib/core-mqtt-sn-gateway/src/MqttSnMessageHandler.cpp -o CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.s

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.o.requires:

.PHONY : lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.o.requires

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.o.provides: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.o.requires
	$(MAKE) -f lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/build.make lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.o.provides.build
.PHONY : lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.o.provides

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.o.provides.build: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.o


lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.o: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/flags.make
lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.o: ../lib/core-mqtt-sn-gateway/src/PersistentInterface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.o"
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && /home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.o -c /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/lib/core-mqtt-sn-gateway/src/PersistentInterface.cpp

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.i: cmake_force
	@echo "Preprocessing CXX source to CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.i"
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && /home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/lib/core-mqtt-sn-gateway/src/PersistentInterface.cpp > CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.i

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.s: cmake_force
	@echo "Compiling CXX source to assembly CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.s"
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && /home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/lib/core-mqtt-sn-gateway/src/PersistentInterface.cpp -o CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.s

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.o.requires:

.PHONY : lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.o.requires

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.o.provides: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.o.requires
	$(MAKE) -f lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/build.make lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.o.provides.build
.PHONY : lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.o.provides

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.o.provides.build: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.o


lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.o: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/flags.make
lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.o: ../lib/core-mqtt-sn-gateway/src/SocketInterface.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.o"
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && /home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.o -c /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/lib/core-mqtt-sn-gateway/src/SocketInterface.cpp

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.i: cmake_force
	@echo "Preprocessing CXX source to CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.i"
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && /home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/lib/core-mqtt-sn-gateway/src/SocketInterface.cpp > CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.i

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.s: cmake_force
	@echo "Compiling CXX source to assembly CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.s"
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && /home/bele/.platformio/packages/toolchain-xtensa/bin/xtensa-lx106-elf-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/lib/core-mqtt-sn-gateway/src/SocketInterface.cpp -o CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.s

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.o.requires:

.PHONY : lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.o.requires

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.o.provides: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.o.requires
	$(MAKE) -f lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/build.make lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.o.provides.build
.PHONY : lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.o.provides

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.o.provides.build: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.o


# Object files for target core-mqtt-sn-gateway
core__mqtt__sn__gateway_OBJECTS = \
"CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.o" \
"CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.o" \
"CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.o" \
"CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.o" \
"CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.o" \
"CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.o"

# External object files for target core-mqtt-sn-gateway
core__mqtt__sn__gateway_EXTERNAL_OBJECTS =

lib/core-mqtt-sn-gateway/libcore-mqtt-sn-gateway.a: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.o
lib/core-mqtt-sn-gateway/libcore-mqtt-sn-gateway.a: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.o
lib/core-mqtt-sn-gateway/libcore-mqtt-sn-gateway.a: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.o
lib/core-mqtt-sn-gateway/libcore-mqtt-sn-gateway.a: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.o
lib/core-mqtt-sn-gateway/libcore-mqtt-sn-gateway.a: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.o
lib/core-mqtt-sn-gateway/libcore-mqtt-sn-gateway.a: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.o
lib/core-mqtt-sn-gateway/libcore-mqtt-sn-gateway.a: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/build.make
lib/core-mqtt-sn-gateway/libcore-mqtt-sn-gateway.a: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --progress-dir=/home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX static library libcore-mqtt-sn-gateway.a"
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && $(CMAKE_COMMAND) -P CMakeFiles/core-mqtt-sn-gateway.dir/cmake_clean_target.cmake
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/core-mqtt-sn-gateway.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/build: lib/core-mqtt-sn-gateway/libcore-mqtt-sn-gateway.a

.PHONY : lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/build

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/requires: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/CoreImpl.cpp.o.requires
lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/requires: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/Gateway.cpp.o.requires
lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/requires: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttMessageHandlerInterface.cpp.o.requires
lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/requires: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/MqttSnMessageHandler.cpp.o.requires
lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/requires: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/PersistentInterface.cpp.o.requires
lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/requires: lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/src/SocketInterface.cpp.o.requires

.PHONY : lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/requires

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/clean:
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway && $(CMAKE_COMMAND) -P CMakeFiles/core-mqtt-sn-gateway.dir/cmake_clean.cmake
.PHONY : lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/clean

lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/depend:
	cd /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/lib/core-mqtt-sn-gateway /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway /home/bele/mqttsngit/NodeMCU-mqtt-sn-gateway/cmake-build-debug/lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/DependInfo.cmake
.PHONY : lib/core-mqtt-sn-gateway/CMakeFiles/core-mqtt-sn-gateway.dir/depend
