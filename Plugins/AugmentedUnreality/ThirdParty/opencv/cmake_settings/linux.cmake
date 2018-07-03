
include(${CMAKE_CURRENT_LIST_DIR}/base.cmake)

# libc++
set(CMAKE_C_COMPILER "clang" CACHE STRING "")
set(CMAKE_CXX_COMPILER "clang++" CACHE STRING "")
set(LIBCPP_FLAGS "-stdlib=libc++ -lc++abi")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++" CACHE STRING "")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} ${LIBCPP_FLAGS}" CACHE STRING "") 
set(CMAKE_MODULE_LINKER_FLAGS "${CMAKE_MODULE_LINKER_FLAGS} ${LIBCPP_FLAGS}" CACHE STRING "") 
set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} ${LIBCPP_FLAGS}" CACHE STRING "") 
