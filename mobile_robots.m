clc;
clear all;

L = 1; 
kp1 = 0.5;
kp2 = 4;

%% Control of two wheel robot

x_set = 5;
y_set = 5;

x = [8 7 5 3 2 3 5 7];
y = [5 7 8 7 5 3 2 3];
theta = [pi/2 5*pi/2 pi 9*pi/8 3*pi/2 13*pi/8 0 pi/4];

figure(1);
grid on;
title("Placement of vechicle to selected point [5,5]");


for i = 1:8
    x_start = x(i);
    y_start = y(i);
    theta_start = theta(i);
    out = sim("mobile_robot_control.slx");
    
    hold on;
    plot(out.x, out.y);
end