cmake_minimum_required(VERSION 3.4.3)
project(KeyPointsPass)

find_package(LLVM REQUIRED CONFIG)

include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

add_library(KeyPointsPass MODULE KeyPointsPass.cpp)

llvm_map_components_to_libnames(llvm_libs support core irreader)
target_link_libraries(KeyPointsPass ${llvm_libs})
