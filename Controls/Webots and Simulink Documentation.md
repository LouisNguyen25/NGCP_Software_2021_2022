Webots is an open source and multi-platform desktop application used to simulate robots.
It provides a complete development environment to model, program, and simulate robots.
It supports many langauges (C, C++, Python, MATLAB, etc) and for our purposes, our main interest is in getting the MATLAB portion to work as a means of running Webots through Simulink.

-----------------------------------------------------------------------------------------

How does Webots access MATLAB?
https://cyberbotics.com/doc/guide/using-matlab

Webots automatically starts MATLAB when it detects an m-file in the controller directory for the robot. The m-file must be named after its directory in order to be identified as a controller file by Webots.

Ex) If the directory is named my_controller, the controller m-file must be named "my_controller/my_controller.m"

Webots calls an intermetdiate "launcher." file that sets up Webots controller environment and then calls the controller n-file. The "launcher.m" file loads the library for communicating with Webots and adds the path to API m-files, which MATLAB API m-files are located in the lib/matlab directory of Webots distribtion.

MATLAB API
https://cyberbotics.com/doc/guide/matlab

Using the MATLAB Desktop
https://cyberbotics.com/doc/guide/matlab

-------------------------------------------------------------------------------------------

Co-simulation with Webots and MATLAB
https://zhuanlan.zhihu.com/p/163027376

Attempts to mimic this video: 
https://www.youtube.com/watch?v=_ideO9InIXs

In order to bridge a connection between the input in Simulink (Constants, PWM, Slider, etc) to Webots, we will use a MATLAB function block to call the API provided by Webots

![image](https://user-images.githubusercontent.com/70172238/140588023-71ac7750-f3e0-4230-888d-a6d25e4e115c.png)

When Webots calls the MATLAB desktop, it will be in a paused state asking to continue, waiting at the keyboard command.

![image](https://user-images.githubusercontent.com/70172238/140588309-9f1f8d60-85a1-4508-88d9-a36a8c6b222c.png)

Click "Exit Debugging" to start writing controller program content.
This should consist of initializing any devices (for example using the wb_robot_get_device() command to initiliaze motors/servos for the vehicle that you want to pass a input like a PWM).

Next consists of opening and loading the .slx file (Simulink model file) using the open_system and load_system commands.

Use the simset function to create/edit simuilation parameters for when you call the simulation command.

Finally, use the sim function to call your .slx file (Simulink model) giving it the parameters from the m-file controller file.

Then, you will have your wb_robot_step(TIME_STEP) ~= -1 while loop afterwards to possibly draw any graphics

-----------------------------------------------------------------------------------------------

Now we can create and write our Simulink Model

1) Make sure your stop time is inf
2) Any variables that you have in your m-file that are sent from Webots to MATLAB should be included in your Simulink model. This includes TIME_STEP, and any variables that may be used to store the initialization for a device (w1, w2, w3, w4 used to initiliaze motors 1-4).
3) Develop some kind of input for devices in Simulation to use (PWM for motors to set their velocity)
4) Use a MATLAB function block in order to call the Webots functions (wb_motor_set_position, wb_motor_set_velocity)

![image](https://user-images.githubusercontent.com/70172238/140589352-a70290c3-c63d-4af7-90b4-93aceed346be.png)

For the function block, the Webots API functions do not have the ability to communicate from Simulink to Webots (MUST ADD THIS)

For the Webots functions called in the MATLAB function block, highlight the function name, right click and click 'Open "wb_motor_set_velocity"' for example.

![image](https://user-images.githubusercontent.com/70172238/140589221-055fbef8-1c21-4e70-be2f-0761cbede514.png)

Before the callib statement that the MATLAB API uses, add the following line:

coder.extrinsic('calllib');

![image](https://user-images.githubusercontent.com/70172238/140589273-9bbcb467-726e-49b7-a20f-149f106ad0a8.png)

After adding the coder.extrinsic('calllib') function to all Webots related functions in the MATLAB function block, you can begin running the simulation.


