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

add_executable(main main.cc)

target_compile_options(main PRIVATE 
  "-fPIC"
  "$<$<CONFIG:Debug>:${CXX_FLAGS_DEBUG}>"
  "$<$<CONFIG:Release>:${CXX_FLAGS_RELEASE}>"
  )

target_link_libraries(main util)
