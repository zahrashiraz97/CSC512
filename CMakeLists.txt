cmake_minimum_required(VERSION 3.4.3)
project(CompilerPasses)

# Find LLVM package
find_package(LLVM REQUIRED CONFIG)
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

# Set C++ Standard to ensure compatibility with LLVM
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Add output directory for pass modules
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)

# Define compiler passes as modules
add_library(KeyPointsPass MODULE KeyPointsPass.cpp)
add_library(SeminalInputPass MODULE SeminalInputPass.cpp)

# Link LLVM libraries
llvm_map_components_to_libnames(llvm_libs support core irreader)
target_link_libraries(KeyPointsPass PRIVATE ${llvm_libs})
target_link_libraries(SeminalInputPass PRIVATE ${llvm_libs})

# Enable extra warnings and optimizations (optional for development)
if (CMAKE_BUILD_TYPE MATCHES Debug)
  target_compile_options(KeyPointsPass PRIVATE -Wall -Wextra -Wpedantic)
  target_compile_options(SeminalInputPass PRIVATE -Wall -Wextra -Wpedantic)
elseif(CMAKE_BUILD_TYPE MATCHES Release)
  target_compile_options(KeyPointsPass PRIVATE -O3)
  target_compile_options(SeminalInputPass PRIVATE -O3)
endif()

# Display a summary
message(STATUS "LLVM Version: ${LLVM_PACKAGE_VERSION}")
message(STATUS "LLVM Libraries: ${llvm_libs}")
message(STATUS "Compiler Passes will be output to: ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}")
