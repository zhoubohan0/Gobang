# CMAKE generated file: DO NOT EDIT!
# Generated by CMake Version 3.22
cmake_policy(SET CMP0009 NEW)

# PROJECT_SOURCES at CMakeLists.txt:42 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/zbh/Desktop/Gobang/sources/*.cpp")
set(OLD_GLOB
  "/home/zbh/Desktop/Gobang/sources/Application.cpp"
  "/home/zbh/Desktop/Gobang/sources/ChessCore/ACEngine.cpp"
  "/home/zbh/Desktop/Gobang/sources/ChessCore/ChessEngine.cpp"
  "/home/zbh/Desktop/Gobang/sources/ChessCore/ChessManager.cpp"
  "/home/zbh/Desktop/Gobang/sources/EventManager.cpp"
  "/home/zbh/Desktop/Gobang/sources/General/BenchMark.cpp"
  "/home/zbh/Desktop/Gobang/sources/General/General.cpp"
  "/home/zbh/Desktop/Gobang/sources/Object/Chess.cpp"
  "/home/zbh/Desktop/Gobang/sources/Object/ChessBoard.cpp"
  "/home/zbh/Desktop/Gobang/sources/Object/Message.cpp"
  "/home/zbh/Desktop/Gobang/sources/Object/UI.cpp"
  "/home/zbh/Desktop/Gobang/sources/Object/highLightChess.cpp"
  "/home/zbh/Desktop/Gobang/sources/Scene.cpp"
  "/home/zbh/Desktop/Gobang/sources/main.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/zbh/Desktop/Gobang/build/CMakeFiles/cmake.verify_globs")
endif()

# PROJECT_SOURCES at CMakeLists.txt:42 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/zbh/Desktop/Gobang/sources/ChessCore/*.cpp")
set(OLD_GLOB
  "/home/zbh/Desktop/Gobang/sources/ChessCore/ACEngine.cpp"
  "/home/zbh/Desktop/Gobang/sources/ChessCore/ChessEngine.cpp"
  "/home/zbh/Desktop/Gobang/sources/ChessCore/ChessManager.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/zbh/Desktop/Gobang/build/CMakeFiles/cmake.verify_globs")
endif()

# PROJECT_SOURCES at CMakeLists.txt:42 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/zbh/Desktop/Gobang/sources/General/*.cpp")
set(OLD_GLOB
  "/home/zbh/Desktop/Gobang/sources/General/BenchMark.cpp"
  "/home/zbh/Desktop/Gobang/sources/General/General.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/zbh/Desktop/Gobang/build/CMakeFiles/cmake.verify_globs")
endif()

# PROJECT_SOURCES at CMakeLists.txt:42 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/zbh/Desktop/Gobang/sources/Object/*.cpp")
set(OLD_GLOB
  "/home/zbh/Desktop/Gobang/sources/Object/Chess.cpp"
  "/home/zbh/Desktop/Gobang/sources/Object/ChessBoard.cpp"
  "/home/zbh/Desktop/Gobang/sources/Object/Message.cpp"
  "/home/zbh/Desktop/Gobang/sources/Object/UI.cpp"
  "/home/zbh/Desktop/Gobang/sources/Object/highLightChess.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/zbh/Desktop/Gobang/build/CMakeFiles/cmake.verify_globs")
endif()
