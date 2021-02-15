cmake_minimum_required(VERSION 3.0.0)
project(image-processing VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 14)

include(CTest)
enable_testing()



set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)

include_directories(headers)
include_directories(src)

file(GLOB_RECURSE SOURCES
    headers/*.h
    src/*.cpp
)

add_executable(image-processing main.cpp ${SOURCES})