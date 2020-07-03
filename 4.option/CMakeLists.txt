cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

project(option LANGUAGES CXX)

# set(BUILD_LIBRARY ON)
option(BUILD_LIBRARY "Turn on with: cmake -D BUILD_LIBRARY=ON .." OFF)
message(STATUS "Build library: ${BUILD_LIBRARY}")

list(APPEND SRC util.h util.cc)

if (BUILD_LIBRARY)
  add_library(util STATIC
    util.h
    util.cc
    )
  add_executable(main main.cc)
  target_link_libraries(main util)
else()
  # add_executable(main main.cc util.h util.cc)
  add_executable(main main.cc ${SRC})
endif()


