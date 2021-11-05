Webots is an open source and multi-platform desktop application used to simulate robots.
It provides a complete development environment to model, program, and simulate robots.
It supports many langauges (C, C++, Python, MATLAB, etc) and for our purposes, our main interest is in getting the MATLAB portion to work as a means of running Webots through Simulink.

How does Webots access MATLAB?
https://cyberbotics.com/doc/guide/using-matlab

Webots automatically starts MATLAB when it detects an m-file in the controller directory for the robot. The m-file must be named after its directory in order to be identified as a controller file by Webots.

Ex) If the directory is named my_controller, the controller m-file must be named "my_controller/my_controller.m"

Webots calls an intermetdiate "launcher." file that sets up Webots controller environment and then calls the controller n-file. The "launcher.m" file loads the library for communicating with Webots and adds the path to API m-files, which MATLAB API m-files are located in the lib/matlab directory of Webots distribtion.
