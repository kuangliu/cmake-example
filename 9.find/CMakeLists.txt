cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

project(find LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Path to find other .cmake file
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR})

find_package(Util REQUIRED)

add_executable(main main.cc)

target_include_directories(main PRIVATE
  ${Util_INCLUDE_DIRS}
  )

target_link_libraries(main PRIVATE
  ${Util_LIBRARIES}
  )




