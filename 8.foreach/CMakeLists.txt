cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

project(option LANGUAGES CXX)

add_library(util STATIC
  util.h
  util.cc
  )

list(APPEND srcs
  main.cc
  util.cc
  )

message(STATUS "Setting source properties:")
foreach(src IN LISTS srcs)
  set_source_files_properties(${src} PROPERTIES COMPILE_FLAGS -O2)
  message(STATUS "Appending -O2 flag for ${src}")
endforeach()

message(STATUS "Querying sources properties:")
foreach(src ${srcs})
  get_source_file_property(flag ${src} COMPILE_FLAGS)
  message(STATUS "Source ${src} has the following extra COMPILE_FLAGS: ${flag}")
endforeach()


