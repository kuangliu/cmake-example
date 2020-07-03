cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

project(option LANGUAGES CXX)

message("C++ compile flags: ${CMAKE_CXX_FLAGS}")

list(APPEND flags "-fPIC" "-Wall")

add_library(util STATIC
  util.h
  util.cc
  )

target_compile_options(util PRIVATE 
  ${flags}
  )

# set(CMAKE_CXX_STANDARD 11)
# set(CMAKE_CXX_EXTENSIONS OFF)
# set(CMAKE_CXX_STANDARD_REQUIRED ON)
set_target_properties(util PROPERTIES
  CXX_STANDARD 14
  CXX_EXTENSIONS OFF
  CXX_STANDARD_REQUIRED ON
  POSITION_INDEPENDENT_CODE 1
  )

add_executable(main main.cc)

target_compile_options(main PRIVATE 
  "-fPIC"
  "$<$<CONFIG:Debug>:${CXX_FLAGS_DEBUG}>"
  "$<$<CONFIG:Release>:${CXX_FLAGS_RELEASE}>"
  )

target_link_libraries(main util)
