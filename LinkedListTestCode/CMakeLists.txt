cmake_minimum_required(VERSION 3.20)
project(LinkedListTestCode C)
set(CMAKE_C_STANDARD 11)

add_library(LinkedList STATIC library.c library.h LLFP.c LLFP.h)
target_compile_features(LinkedList PUBLIC c_std_11)

set(SOURCE_FILES main.c)
add_executable(main ${SOURCE_FILES})
target_link_libraries(main PUBLIC LinkedList)
