cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

project(util LANGUAGES CXX)

add_library(util STATIC
  util.h util.cc)
