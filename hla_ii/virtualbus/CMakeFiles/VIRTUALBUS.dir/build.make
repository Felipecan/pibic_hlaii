# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/daniel/workspace/hla_ii

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/daniel/workspace/hla_ii

# Include any dependencies generated for this target.
include virtualbus/CMakeFiles/VIRTUALBUS.dir/depend.make

# Include the progress variables for this target.
include virtualbus/CMakeFiles/VIRTUALBUS.dir/progress.make

# Include the compile flags for this target's objects.
include virtualbus/CMakeFiles/VIRTUALBUS.dir/flags.make

virtualbus/CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.o: virtualbus/CMakeFiles/VIRTUALBUS.dir/flags.make
virtualbus/CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.o: virtualbus/FederateAmbassador.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel/workspace/hla_ii/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object virtualbus/CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.o"
	cd /home/daniel/workspace/hla_ii/virtualbus && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.o -c /home/daniel/workspace/hla_ii/virtualbus/FederateAmbassador.cpp

virtualbus/CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.i"
	cd /home/daniel/workspace/hla_ii/virtualbus && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniel/workspace/hla_ii/virtualbus/FederateAmbassador.cpp > CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.i

virtualbus/CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.s"
	cd /home/daniel/workspace/hla_ii/virtualbus && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniel/workspace/hla_ii/virtualbus/FederateAmbassador.cpp -o CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.s

virtualbus/CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.o.requires:

.PHONY : virtualbus/CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.o.requires

virtualbus/CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.o.provides: virtualbus/CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.o.requires
	$(MAKE) -f virtualbus/CMakeFiles/VIRTUALBUS.dir/build.make virtualbus/CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.o.provides.build
.PHONY : virtualbus/CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.o.provides

virtualbus/CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.o.provides.build: virtualbus/CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.o


virtualbus/CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.o: virtualbus/CMakeFiles/VIRTUALBUS.dir/flags.make
virtualbus/CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.o: virtualbus/VirtualBusFederate.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/daniel/workspace/hla_ii/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object virtualbus/CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.o"
	cd /home/daniel/workspace/hla_ii/virtualbus && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.o -c /home/daniel/workspace/hla_ii/virtualbus/VirtualBusFederate.cpp

virtualbus/CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.i"
	cd /home/daniel/workspace/hla_ii/virtualbus && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/daniel/workspace/hla_ii/virtualbus/VirtualBusFederate.cpp > CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.i

virtualbus/CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.s"
	cd /home/daniel/workspace/hla_ii/virtualbus && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/daniel/workspace/hla_ii/virtualbus/VirtualBusFederate.cpp -o CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.s

virtualbus/CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.o.requires:

.PHONY : virtualbus/CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.o.requires

virtualbus/CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.o.provides: virtualbus/CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.o.requires
	$(MAKE) -f virtualbus/CMakeFiles/VIRTUALBUS.dir/build.make virtualbus/CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.o.provides.build
.PHONY : virtualbus/CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.o.provides

virtualbus/CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.o.provides.build: virtualbus/CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.o


# Object files for target VIRTUALBUS
VIRTUALBUS_OBJECTS = \
"CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.o" \
"CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.o"

# External object files for target VIRTUALBUS
VIRTUALBUS_EXTERNAL_OBJECTS =

virtualbus/libVIRTUALBUS.a: virtualbus/CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.o
virtualbus/libVIRTUALBUS.a: virtualbus/CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.o
virtualbus/libVIRTUALBUS.a: virtualbus/CMakeFiles/VIRTUALBUS.dir/build.make
virtualbus/libVIRTUALBUS.a: virtualbus/CMakeFiles/VIRTUALBUS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/daniel/workspace/hla_ii/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libVIRTUALBUS.a"
	cd /home/daniel/workspace/hla_ii/virtualbus && $(CMAKE_COMMAND) -P CMakeFiles/VIRTUALBUS.dir/cmake_clean_target.cmake
	cd /home/daniel/workspace/hla_ii/virtualbus && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/VIRTUALBUS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
virtualbus/CMakeFiles/VIRTUALBUS.dir/build: virtualbus/libVIRTUALBUS.a

.PHONY : virtualbus/CMakeFiles/VIRTUALBUS.dir/build

virtualbus/CMakeFiles/VIRTUALBUS.dir/requires: virtualbus/CMakeFiles/VIRTUALBUS.dir/FederateAmbassador.cpp.o.requires
virtualbus/CMakeFiles/VIRTUALBUS.dir/requires: virtualbus/CMakeFiles/VIRTUALBUS.dir/VirtualBusFederate.cpp.o.requires

.PHONY : virtualbus/CMakeFiles/VIRTUALBUS.dir/requires

virtualbus/CMakeFiles/VIRTUALBUS.dir/clean:
	cd /home/daniel/workspace/hla_ii/virtualbus && $(CMAKE_COMMAND) -P CMakeFiles/VIRTUALBUS.dir/cmake_clean.cmake
.PHONY : virtualbus/CMakeFiles/VIRTUALBUS.dir/clean

virtualbus/CMakeFiles/VIRTUALBUS.dir/depend:
	cd /home/daniel/workspace/hla_ii && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel/workspace/hla_ii /home/daniel/workspace/hla_ii/virtualbus /home/daniel/workspace/hla_ii /home/daniel/workspace/hla_ii/virtualbus /home/daniel/workspace/hla_ii/virtualbus/CMakeFiles/VIRTUALBUS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : virtualbus/CMakeFiles/VIRTUALBUS.dir/depend

