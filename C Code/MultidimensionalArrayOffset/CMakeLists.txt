cmake_minimum_required(VERSION 3.20)
project(MultidimensionalArrayOffset C)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=undefined")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -fsanitize=undefined")

add_executable(MultidimensionalArrayOffset main.c)
