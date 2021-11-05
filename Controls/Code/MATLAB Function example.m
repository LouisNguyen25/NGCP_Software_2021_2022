function fcn(T,w1,w2,w3,w4,v)

wb_robot_step(T)
wb_motor_set_position(w1, Inf);
wb_motor_set_velocity(w1, v);
wb_motor_set_position(w2, Inf);
wb_motor_set_velocity(w2, -v);
wb_motor_set_position(w3, Inf);
wb_motor_set_velocity(w3, -v);
wb_motor_set_position(w4, Inf);
wb_motor_set_velocity(w4, v);

