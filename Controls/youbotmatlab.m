% MATLAB controller for Webots
% File:          youbotmatlab.m
% Date:
% Description:
% Author:
% Modifications:

% uncomment the next two lines if you want to use
% MATLAB's desktop to interact with the controller:
desktop;
keyboard;

TIME_STEP = 64;

% get and enable devices, e.g.:
%  camera = wb_robot_get_device('camera');
%  wb_camera_enable(camera, TIME_STEP);
%  motor = wb_robot_get_device('motor');
w1 = wb_robot_get_device('wheel1');
w2 = wb_robot_get_device('wheel2');
w3 = wb_robot_get_device('wheel3');
w4 = wb_robot_get_device('wheel4');

% main loop:
% perform simulation steps of TIME_STEP milliseconds
% and leave the loop when Webots signals the termination
%
open_system('test');
load_system('test');

options=simset('SrcWorkspace', 'current');
sim('test',[],options);

while wb_robot_step(TIME_STEP) ~= -1

  % read the sensors, e.g.:
  %  rgb = wb_camera_get_image(camera);

  % Process here sensor data, images, etc.

  % send actuator commands, e.g.:
  %  wb_motor_set_postion(motor, 10.0);

  % if your code plots some graphics, it needs to flushed like this:
  drawnow;

end

% cleanup code goes here: write data to files, etc.
