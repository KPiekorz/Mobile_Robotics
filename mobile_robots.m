clc;
clear all;

L = 1; 
kp1 = 0.5;
kp2 = 4;

%% Control of two wheel robot

x_set = 5;
y_set = 5;

x_start = 5;
y_start = 8;
theta_start = pi;

out = sim("mobile_robot_control.slx");

figure(1);
plot(out.x, out.y);

for r = 1:8
    
end