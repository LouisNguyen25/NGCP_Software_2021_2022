# Install script for directory: C:/Users/KingFu/Desktop/UGV - NGCP internship/test/NGCP_Software_2021_2022/opencv-master/modules/highgui

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/KingFu/Desktop/UGV - NGCP internship/test/NGCP_Software_2021_2022/opencv-master/out/install/x64-Debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/x64/vc16/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/KingFu/Desktop/UGV - NGCP internship/test/NGCP_Software_2021_2022/opencv-master/out/build/x64-Debug/lib/opencv_highgui453d.lib")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/x64/vc16/bin" TYPE SHARED_LIBRARY OPTIONAL FILES "C:/Users/KingFu/Desktop/UGV - NGCP internship/test/NGCP_Software_2021_2022/opencv-master/out/build/x64-Debug/bin/opencv_highgui453d.dll")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpdbx")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/x64/vc16/bin" TYPE FILE OPTIONAL FILES "C:/Users/KingFu/Desktop/UGV - NGCP internship/test/NGCP_Software_2021_2022/opencv-master/out/build/x64-Debug/bin/opencv_highgui453d.pdb")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Users/KingFu/Desktop/UGV - NGCP internship/test/NGCP_Software_2021_2022/opencv-master/modules/highgui/include/opencv2/highgui.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/highgui" TYPE FILE OPTIONAL FILES "C:/Users/KingFu/Desktop/UGV - NGCP internship/test/NGCP_Software_2021_2022/opencv-master/modules/highgui/include/opencv2/highgui/highgui.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xdevx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/highgui" TYPE FILE OPTIONAL FILES "C:/Users/KingFu/Desktop/UGV - NGCP internship/test/NGCP_Software_2021_2022/opencv-master/modules/highgui/include/opencv2/highgui/highgui_c.h")
endif()

