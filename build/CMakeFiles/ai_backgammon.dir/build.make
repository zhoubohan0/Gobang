# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/zbh/Desktop/Gobang

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zbh/Desktop/Gobang/build

# Include any dependencies generated for this target.
include CMakeFiles/ai_backgammon.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ai_backgammon.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ai_backgammon.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ai_backgammon.dir/flags.make

CMakeFiles/ai_backgammon.dir/sources/Application.cpp.o: CMakeFiles/ai_backgammon.dir/flags.make
CMakeFiles/ai_backgammon.dir/sources/Application.cpp.o: ../sources/Application.cpp
CMakeFiles/ai_backgammon.dir/sources/Application.cpp.o: CMakeFiles/ai_backgammon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zbh/Desktop/Gobang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ai_backgammon.dir/sources/Application.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai_backgammon.dir/sources/Application.cpp.o -MF CMakeFiles/ai_backgammon.dir/sources/Application.cpp.o.d -o CMakeFiles/ai_backgammon.dir/sources/Application.cpp.o -c /home/zbh/Desktop/Gobang/sources/Application.cpp

CMakeFiles/ai_backgammon.dir/sources/Application.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai_backgammon.dir/sources/Application.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zbh/Desktop/Gobang/sources/Application.cpp > CMakeFiles/ai_backgammon.dir/sources/Application.cpp.i

CMakeFiles/ai_backgammon.dir/sources/Application.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai_backgammon.dir/sources/Application.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zbh/Desktop/Gobang/sources/Application.cpp -o CMakeFiles/ai_backgammon.dir/sources/Application.cpp.s

CMakeFiles/ai_backgammon.dir/sources/ChessCore/ACEngine.cpp.o: CMakeFiles/ai_backgammon.dir/flags.make
CMakeFiles/ai_backgammon.dir/sources/ChessCore/ACEngine.cpp.o: ../sources/ChessCore/ACEngine.cpp
CMakeFiles/ai_backgammon.dir/sources/ChessCore/ACEngine.cpp.o: CMakeFiles/ai_backgammon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zbh/Desktop/Gobang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ai_backgammon.dir/sources/ChessCore/ACEngine.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai_backgammon.dir/sources/ChessCore/ACEngine.cpp.o -MF CMakeFiles/ai_backgammon.dir/sources/ChessCore/ACEngine.cpp.o.d -o CMakeFiles/ai_backgammon.dir/sources/ChessCore/ACEngine.cpp.o -c /home/zbh/Desktop/Gobang/sources/ChessCore/ACEngine.cpp

CMakeFiles/ai_backgammon.dir/sources/ChessCore/ACEngine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai_backgammon.dir/sources/ChessCore/ACEngine.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zbh/Desktop/Gobang/sources/ChessCore/ACEngine.cpp > CMakeFiles/ai_backgammon.dir/sources/ChessCore/ACEngine.cpp.i

CMakeFiles/ai_backgammon.dir/sources/ChessCore/ACEngine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai_backgammon.dir/sources/ChessCore/ACEngine.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zbh/Desktop/Gobang/sources/ChessCore/ACEngine.cpp -o CMakeFiles/ai_backgammon.dir/sources/ChessCore/ACEngine.cpp.s

CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessEngine.cpp.o: CMakeFiles/ai_backgammon.dir/flags.make
CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessEngine.cpp.o: ../sources/ChessCore/ChessEngine.cpp
CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessEngine.cpp.o: CMakeFiles/ai_backgammon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zbh/Desktop/Gobang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessEngine.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessEngine.cpp.o -MF CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessEngine.cpp.o.d -o CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessEngine.cpp.o -c /home/zbh/Desktop/Gobang/sources/ChessCore/ChessEngine.cpp

CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessEngine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessEngine.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zbh/Desktop/Gobang/sources/ChessCore/ChessEngine.cpp > CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessEngine.cpp.i

CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessEngine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessEngine.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zbh/Desktop/Gobang/sources/ChessCore/ChessEngine.cpp -o CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessEngine.cpp.s

CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessManager.cpp.o: CMakeFiles/ai_backgammon.dir/flags.make
CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessManager.cpp.o: ../sources/ChessCore/ChessManager.cpp
CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessManager.cpp.o: CMakeFiles/ai_backgammon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zbh/Desktop/Gobang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessManager.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessManager.cpp.o -MF CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessManager.cpp.o.d -o CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessManager.cpp.o -c /home/zbh/Desktop/Gobang/sources/ChessCore/ChessManager.cpp

CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessManager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zbh/Desktop/Gobang/sources/ChessCore/ChessManager.cpp > CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessManager.cpp.i

CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessManager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zbh/Desktop/Gobang/sources/ChessCore/ChessManager.cpp -o CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessManager.cpp.s

CMakeFiles/ai_backgammon.dir/sources/EventManager.cpp.o: CMakeFiles/ai_backgammon.dir/flags.make
CMakeFiles/ai_backgammon.dir/sources/EventManager.cpp.o: ../sources/EventManager.cpp
CMakeFiles/ai_backgammon.dir/sources/EventManager.cpp.o: CMakeFiles/ai_backgammon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zbh/Desktop/Gobang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ai_backgammon.dir/sources/EventManager.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai_backgammon.dir/sources/EventManager.cpp.o -MF CMakeFiles/ai_backgammon.dir/sources/EventManager.cpp.o.d -o CMakeFiles/ai_backgammon.dir/sources/EventManager.cpp.o -c /home/zbh/Desktop/Gobang/sources/EventManager.cpp

CMakeFiles/ai_backgammon.dir/sources/EventManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai_backgammon.dir/sources/EventManager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zbh/Desktop/Gobang/sources/EventManager.cpp > CMakeFiles/ai_backgammon.dir/sources/EventManager.cpp.i

CMakeFiles/ai_backgammon.dir/sources/EventManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai_backgammon.dir/sources/EventManager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zbh/Desktop/Gobang/sources/EventManager.cpp -o CMakeFiles/ai_backgammon.dir/sources/EventManager.cpp.s

CMakeFiles/ai_backgammon.dir/sources/General/BenchMark.cpp.o: CMakeFiles/ai_backgammon.dir/flags.make
CMakeFiles/ai_backgammon.dir/sources/General/BenchMark.cpp.o: ../sources/General/BenchMark.cpp
CMakeFiles/ai_backgammon.dir/sources/General/BenchMark.cpp.o: CMakeFiles/ai_backgammon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zbh/Desktop/Gobang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/ai_backgammon.dir/sources/General/BenchMark.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai_backgammon.dir/sources/General/BenchMark.cpp.o -MF CMakeFiles/ai_backgammon.dir/sources/General/BenchMark.cpp.o.d -o CMakeFiles/ai_backgammon.dir/sources/General/BenchMark.cpp.o -c /home/zbh/Desktop/Gobang/sources/General/BenchMark.cpp

CMakeFiles/ai_backgammon.dir/sources/General/BenchMark.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai_backgammon.dir/sources/General/BenchMark.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zbh/Desktop/Gobang/sources/General/BenchMark.cpp > CMakeFiles/ai_backgammon.dir/sources/General/BenchMark.cpp.i

CMakeFiles/ai_backgammon.dir/sources/General/BenchMark.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai_backgammon.dir/sources/General/BenchMark.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zbh/Desktop/Gobang/sources/General/BenchMark.cpp -o CMakeFiles/ai_backgammon.dir/sources/General/BenchMark.cpp.s

CMakeFiles/ai_backgammon.dir/sources/General/General.cpp.o: CMakeFiles/ai_backgammon.dir/flags.make
CMakeFiles/ai_backgammon.dir/sources/General/General.cpp.o: ../sources/General/General.cpp
CMakeFiles/ai_backgammon.dir/sources/General/General.cpp.o: CMakeFiles/ai_backgammon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zbh/Desktop/Gobang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/ai_backgammon.dir/sources/General/General.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai_backgammon.dir/sources/General/General.cpp.o -MF CMakeFiles/ai_backgammon.dir/sources/General/General.cpp.o.d -o CMakeFiles/ai_backgammon.dir/sources/General/General.cpp.o -c /home/zbh/Desktop/Gobang/sources/General/General.cpp

CMakeFiles/ai_backgammon.dir/sources/General/General.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai_backgammon.dir/sources/General/General.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zbh/Desktop/Gobang/sources/General/General.cpp > CMakeFiles/ai_backgammon.dir/sources/General/General.cpp.i

CMakeFiles/ai_backgammon.dir/sources/General/General.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai_backgammon.dir/sources/General/General.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zbh/Desktop/Gobang/sources/General/General.cpp -o CMakeFiles/ai_backgammon.dir/sources/General/General.cpp.s

CMakeFiles/ai_backgammon.dir/sources/Object/Chess.cpp.o: CMakeFiles/ai_backgammon.dir/flags.make
CMakeFiles/ai_backgammon.dir/sources/Object/Chess.cpp.o: ../sources/Object/Chess.cpp
CMakeFiles/ai_backgammon.dir/sources/Object/Chess.cpp.o: CMakeFiles/ai_backgammon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zbh/Desktop/Gobang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/ai_backgammon.dir/sources/Object/Chess.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai_backgammon.dir/sources/Object/Chess.cpp.o -MF CMakeFiles/ai_backgammon.dir/sources/Object/Chess.cpp.o.d -o CMakeFiles/ai_backgammon.dir/sources/Object/Chess.cpp.o -c /home/zbh/Desktop/Gobang/sources/Object/Chess.cpp

CMakeFiles/ai_backgammon.dir/sources/Object/Chess.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai_backgammon.dir/sources/Object/Chess.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zbh/Desktop/Gobang/sources/Object/Chess.cpp > CMakeFiles/ai_backgammon.dir/sources/Object/Chess.cpp.i

CMakeFiles/ai_backgammon.dir/sources/Object/Chess.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai_backgammon.dir/sources/Object/Chess.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zbh/Desktop/Gobang/sources/Object/Chess.cpp -o CMakeFiles/ai_backgammon.dir/sources/Object/Chess.cpp.s

CMakeFiles/ai_backgammon.dir/sources/Object/ChessBoard.cpp.o: CMakeFiles/ai_backgammon.dir/flags.make
CMakeFiles/ai_backgammon.dir/sources/Object/ChessBoard.cpp.o: ../sources/Object/ChessBoard.cpp
CMakeFiles/ai_backgammon.dir/sources/Object/ChessBoard.cpp.o: CMakeFiles/ai_backgammon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zbh/Desktop/Gobang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/ai_backgammon.dir/sources/Object/ChessBoard.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai_backgammon.dir/sources/Object/ChessBoard.cpp.o -MF CMakeFiles/ai_backgammon.dir/sources/Object/ChessBoard.cpp.o.d -o CMakeFiles/ai_backgammon.dir/sources/Object/ChessBoard.cpp.o -c /home/zbh/Desktop/Gobang/sources/Object/ChessBoard.cpp

CMakeFiles/ai_backgammon.dir/sources/Object/ChessBoard.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai_backgammon.dir/sources/Object/ChessBoard.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zbh/Desktop/Gobang/sources/Object/ChessBoard.cpp > CMakeFiles/ai_backgammon.dir/sources/Object/ChessBoard.cpp.i

CMakeFiles/ai_backgammon.dir/sources/Object/ChessBoard.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai_backgammon.dir/sources/Object/ChessBoard.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zbh/Desktop/Gobang/sources/Object/ChessBoard.cpp -o CMakeFiles/ai_backgammon.dir/sources/Object/ChessBoard.cpp.s

CMakeFiles/ai_backgammon.dir/sources/Object/Message.cpp.o: CMakeFiles/ai_backgammon.dir/flags.make
CMakeFiles/ai_backgammon.dir/sources/Object/Message.cpp.o: ../sources/Object/Message.cpp
CMakeFiles/ai_backgammon.dir/sources/Object/Message.cpp.o: CMakeFiles/ai_backgammon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zbh/Desktop/Gobang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/ai_backgammon.dir/sources/Object/Message.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai_backgammon.dir/sources/Object/Message.cpp.o -MF CMakeFiles/ai_backgammon.dir/sources/Object/Message.cpp.o.d -o CMakeFiles/ai_backgammon.dir/sources/Object/Message.cpp.o -c /home/zbh/Desktop/Gobang/sources/Object/Message.cpp

CMakeFiles/ai_backgammon.dir/sources/Object/Message.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai_backgammon.dir/sources/Object/Message.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zbh/Desktop/Gobang/sources/Object/Message.cpp > CMakeFiles/ai_backgammon.dir/sources/Object/Message.cpp.i

CMakeFiles/ai_backgammon.dir/sources/Object/Message.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai_backgammon.dir/sources/Object/Message.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zbh/Desktop/Gobang/sources/Object/Message.cpp -o CMakeFiles/ai_backgammon.dir/sources/Object/Message.cpp.s

CMakeFiles/ai_backgammon.dir/sources/Object/UI.cpp.o: CMakeFiles/ai_backgammon.dir/flags.make
CMakeFiles/ai_backgammon.dir/sources/Object/UI.cpp.o: ../sources/Object/UI.cpp
CMakeFiles/ai_backgammon.dir/sources/Object/UI.cpp.o: CMakeFiles/ai_backgammon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zbh/Desktop/Gobang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/ai_backgammon.dir/sources/Object/UI.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai_backgammon.dir/sources/Object/UI.cpp.o -MF CMakeFiles/ai_backgammon.dir/sources/Object/UI.cpp.o.d -o CMakeFiles/ai_backgammon.dir/sources/Object/UI.cpp.o -c /home/zbh/Desktop/Gobang/sources/Object/UI.cpp

CMakeFiles/ai_backgammon.dir/sources/Object/UI.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai_backgammon.dir/sources/Object/UI.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zbh/Desktop/Gobang/sources/Object/UI.cpp > CMakeFiles/ai_backgammon.dir/sources/Object/UI.cpp.i

CMakeFiles/ai_backgammon.dir/sources/Object/UI.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai_backgammon.dir/sources/Object/UI.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zbh/Desktop/Gobang/sources/Object/UI.cpp -o CMakeFiles/ai_backgammon.dir/sources/Object/UI.cpp.s

CMakeFiles/ai_backgammon.dir/sources/Object/highLightChess.cpp.o: CMakeFiles/ai_backgammon.dir/flags.make
CMakeFiles/ai_backgammon.dir/sources/Object/highLightChess.cpp.o: ../sources/Object/highLightChess.cpp
CMakeFiles/ai_backgammon.dir/sources/Object/highLightChess.cpp.o: CMakeFiles/ai_backgammon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zbh/Desktop/Gobang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/ai_backgammon.dir/sources/Object/highLightChess.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai_backgammon.dir/sources/Object/highLightChess.cpp.o -MF CMakeFiles/ai_backgammon.dir/sources/Object/highLightChess.cpp.o.d -o CMakeFiles/ai_backgammon.dir/sources/Object/highLightChess.cpp.o -c /home/zbh/Desktop/Gobang/sources/Object/highLightChess.cpp

CMakeFiles/ai_backgammon.dir/sources/Object/highLightChess.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai_backgammon.dir/sources/Object/highLightChess.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zbh/Desktop/Gobang/sources/Object/highLightChess.cpp > CMakeFiles/ai_backgammon.dir/sources/Object/highLightChess.cpp.i

CMakeFiles/ai_backgammon.dir/sources/Object/highLightChess.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai_backgammon.dir/sources/Object/highLightChess.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zbh/Desktop/Gobang/sources/Object/highLightChess.cpp -o CMakeFiles/ai_backgammon.dir/sources/Object/highLightChess.cpp.s

CMakeFiles/ai_backgammon.dir/sources/Scene.cpp.o: CMakeFiles/ai_backgammon.dir/flags.make
CMakeFiles/ai_backgammon.dir/sources/Scene.cpp.o: ../sources/Scene.cpp
CMakeFiles/ai_backgammon.dir/sources/Scene.cpp.o: CMakeFiles/ai_backgammon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zbh/Desktop/Gobang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/ai_backgammon.dir/sources/Scene.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai_backgammon.dir/sources/Scene.cpp.o -MF CMakeFiles/ai_backgammon.dir/sources/Scene.cpp.o.d -o CMakeFiles/ai_backgammon.dir/sources/Scene.cpp.o -c /home/zbh/Desktop/Gobang/sources/Scene.cpp

CMakeFiles/ai_backgammon.dir/sources/Scene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai_backgammon.dir/sources/Scene.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zbh/Desktop/Gobang/sources/Scene.cpp > CMakeFiles/ai_backgammon.dir/sources/Scene.cpp.i

CMakeFiles/ai_backgammon.dir/sources/Scene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai_backgammon.dir/sources/Scene.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zbh/Desktop/Gobang/sources/Scene.cpp -o CMakeFiles/ai_backgammon.dir/sources/Scene.cpp.s

CMakeFiles/ai_backgammon.dir/sources/main.cpp.o: CMakeFiles/ai_backgammon.dir/flags.make
CMakeFiles/ai_backgammon.dir/sources/main.cpp.o: ../sources/main.cpp
CMakeFiles/ai_backgammon.dir/sources/main.cpp.o: CMakeFiles/ai_backgammon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zbh/Desktop/Gobang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/ai_backgammon.dir/sources/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ai_backgammon.dir/sources/main.cpp.o -MF CMakeFiles/ai_backgammon.dir/sources/main.cpp.o.d -o CMakeFiles/ai_backgammon.dir/sources/main.cpp.o -c /home/zbh/Desktop/Gobang/sources/main.cpp

CMakeFiles/ai_backgammon.dir/sources/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ai_backgammon.dir/sources/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zbh/Desktop/Gobang/sources/main.cpp > CMakeFiles/ai_backgammon.dir/sources/main.cpp.i

CMakeFiles/ai_backgammon.dir/sources/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ai_backgammon.dir/sources/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zbh/Desktop/Gobang/sources/main.cpp -o CMakeFiles/ai_backgammon.dir/sources/main.cpp.s

# Object files for target ai_backgammon
ai_backgammon_OBJECTS = \
"CMakeFiles/ai_backgammon.dir/sources/Application.cpp.o" \
"CMakeFiles/ai_backgammon.dir/sources/ChessCore/ACEngine.cpp.o" \
"CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessEngine.cpp.o" \
"CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessManager.cpp.o" \
"CMakeFiles/ai_backgammon.dir/sources/EventManager.cpp.o" \
"CMakeFiles/ai_backgammon.dir/sources/General/BenchMark.cpp.o" \
"CMakeFiles/ai_backgammon.dir/sources/General/General.cpp.o" \
"CMakeFiles/ai_backgammon.dir/sources/Object/Chess.cpp.o" \
"CMakeFiles/ai_backgammon.dir/sources/Object/ChessBoard.cpp.o" \
"CMakeFiles/ai_backgammon.dir/sources/Object/Message.cpp.o" \
"CMakeFiles/ai_backgammon.dir/sources/Object/UI.cpp.o" \
"CMakeFiles/ai_backgammon.dir/sources/Object/highLightChess.cpp.o" \
"CMakeFiles/ai_backgammon.dir/sources/Scene.cpp.o" \
"CMakeFiles/ai_backgammon.dir/sources/main.cpp.o"

# External object files for target ai_backgammon
ai_backgammon_EXTERNAL_OBJECTS =

ai_backgammon: CMakeFiles/ai_backgammon.dir/sources/Application.cpp.o
ai_backgammon: CMakeFiles/ai_backgammon.dir/sources/ChessCore/ACEngine.cpp.o
ai_backgammon: CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessEngine.cpp.o
ai_backgammon: CMakeFiles/ai_backgammon.dir/sources/ChessCore/ChessManager.cpp.o
ai_backgammon: CMakeFiles/ai_backgammon.dir/sources/EventManager.cpp.o
ai_backgammon: CMakeFiles/ai_backgammon.dir/sources/General/BenchMark.cpp.o
ai_backgammon: CMakeFiles/ai_backgammon.dir/sources/General/General.cpp.o
ai_backgammon: CMakeFiles/ai_backgammon.dir/sources/Object/Chess.cpp.o
ai_backgammon: CMakeFiles/ai_backgammon.dir/sources/Object/ChessBoard.cpp.o
ai_backgammon: CMakeFiles/ai_backgammon.dir/sources/Object/Message.cpp.o
ai_backgammon: CMakeFiles/ai_backgammon.dir/sources/Object/UI.cpp.o
ai_backgammon: CMakeFiles/ai_backgammon.dir/sources/Object/highLightChess.cpp.o
ai_backgammon: CMakeFiles/ai_backgammon.dir/sources/Scene.cpp.o
ai_backgammon: CMakeFiles/ai_backgammon.dir/sources/main.cpp.o
ai_backgammon: CMakeFiles/ai_backgammon.dir/build.make
ai_backgammon: _deps/raylib-build/raylib/libraylib.a
ai_backgammon: /usr/lib/x86_64-linux-gnu/libOpenGL.so
ai_backgammon: /usr/lib/x86_64-linux-gnu/libGLX.so
ai_backgammon: /usr/lib/x86_64-linux-gnu/libGLU.so
ai_backgammon: /usr/lib/x86_64-linux-gnu/librt.a
ai_backgammon: /usr/lib/x86_64-linux-gnu/libm.so
ai_backgammon: CMakeFiles/ai_backgammon.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zbh/Desktop/Gobang/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX executable ai_backgammon"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ai_backgammon.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ai_backgammon.dir/build: ai_backgammon
.PHONY : CMakeFiles/ai_backgammon.dir/build

CMakeFiles/ai_backgammon.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ai_backgammon.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ai_backgammon.dir/clean

CMakeFiles/ai_backgammon.dir/depend:
	cd /home/zbh/Desktop/Gobang/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zbh/Desktop/Gobang /home/zbh/Desktop/Gobang /home/zbh/Desktop/Gobang/build /home/zbh/Desktop/Gobang/build /home/zbh/Desktop/Gobang/build/CMakeFiles/ai_backgammon.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ai_backgammon.dir/depend

