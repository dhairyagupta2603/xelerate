cmake_minimum_required(VERSION 3.26 FATAL_ERROR)

set(CMAKE_C_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

message("The c++ version is ${CMAKE_CXX_STANDARD}, using the ${CMAKE_CXX_COMPILER} compiler")

project(
    xelerate
    VERSION 0.1
    LANGUAGES C
    DESCRIPTION "A linux command line utility to change mouse settings"
)
    
# add_subdirectory(src/Tokenization)

add_executable(${PROJECT_NAME}
    main.c
)

target_include_directories(${PROJECT_NAME} PUBLIC 
    "${PROJECT_BINARY_DIR}"
    "${CMAKE_CURRENT_SOURCE_DIR}/include/"
)

# target_link_libraries(${PROJECT_NAME} PUBLIC 
#     tokenization
# )