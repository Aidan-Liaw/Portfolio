# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/aidanliaw/CLionProjects/multidimensionalArrayOffset

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/aidanliaw/CLionProjects/multidimensionalArrayOffset/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/MultidimensionalArrayOffset.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/MultidimensionalArrayOffset.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MultidimensionalArrayOffset.dir/flags.make

CMakeFiles/MultidimensionalArrayOffset.dir/main.c.o: CMakeFiles/MultidimensionalArrayOffset.dir/flags.make
CMakeFiles/MultidimensionalArrayOffset.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aidanliaw/CLionProjects/multidimensionalArrayOffset/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/MultidimensionalArrayOffset.dir/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MultidimensionalArrayOffset.dir/main.c.o -c /Users/aidanliaw/CLionProjects/multidimensionalArrayOffset/main.c

CMakeFiles/MultidimensionalArrayOffset.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MultidimensionalArrayOffset.dir/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/aidanliaw/CLionProjects/multidimensionalArrayOffset/main.c > CMakeFiles/MultidimensionalArrayOffset.dir/main.c.i

CMakeFiles/MultidimensionalArrayOffset.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MultidimensionalArrayOffset.dir/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/aidanliaw/CLionProjects/multidimensionalArrayOffset/main.c -o CMakeFiles/MultidimensionalArrayOffset.dir/main.c.s

# Object files for target MultidimensionalArrayOffset
MultidimensionalArrayOffset_OBJECTS = \
"CMakeFiles/MultidimensionalArrayOffset.dir/main.c.o"

# External object files for target MultidimensionalArrayOffset
MultidimensionalArrayOffset_EXTERNAL_OBJECTS =

MultidimensionalArrayOffset: CMakeFiles/MultidimensionalArrayOffset.dir/main.c.o
MultidimensionalArrayOffset: CMakeFiles/MultidimensionalArrayOffset.dir/build.make
MultidimensionalArrayOffset: CMakeFiles/MultidimensionalArrayOffset.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/aidanliaw/CLionProjects/multidimensionalArrayOffset/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable MultidimensionalArrayOffset"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MultidimensionalArrayOffset.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MultidimensionalArrayOffset.dir/build: MultidimensionalArrayOffset
.PHONY : CMakeFiles/MultidimensionalArrayOffset.dir/build

CMakeFiles/MultidimensionalArrayOffset.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MultidimensionalArrayOffset.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MultidimensionalArrayOffset.dir/clean

CMakeFiles/MultidimensionalArrayOffset.dir/depend:
	cd /Users/aidanliaw/CLionProjects/multidimensionalArrayOffset/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aidanliaw/CLionProjects/multidimensionalArrayOffset /Users/aidanliaw/CLionProjects/multidimensionalArrayOffset /Users/aidanliaw/CLionProjects/multidimensionalArrayOffset/cmake-build-debug /Users/aidanliaw/CLionProjects/multidimensionalArrayOffset/cmake-build-debug /Users/aidanliaw/CLionProjects/multidimensionalArrayOffset/cmake-build-debug/CMakeFiles/MultidimensionalArrayOffset.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MultidimensionalArrayOffset.dir/depend
