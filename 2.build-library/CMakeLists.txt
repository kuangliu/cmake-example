cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

project(build-library LANGUAGES CXX)

# add_library(util STATIC
#   util.h
#   util.cc
#   )

# add_library(util SHARED
#   util.h
#   util.cc
#   )

add_library(util OBJECT
  util.h
  util.cc
  )

add_library(util-shared SHARED
  $<TARGET_OBJECTS:util>
  )

add_library(util-static STATIC
  $<TARGET_OBJECTS:util>
  )

add_executable(main main.cc)
target_link_libraries(main util-static)
