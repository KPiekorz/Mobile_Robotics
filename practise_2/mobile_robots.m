clc;
clear all;
close all;

L = 1; 

% https://stackoverflow.com/questions/3838319/how-can-i-check-if-a-point-is-below-a-line-or-not
% need to verify if above or below and then change sign of this kp1
kp1 = -0.5;
kp2 = 1;


%% Control of two wheel robot

a = 1;
b = -2;
c = 4;

speed = 1;

x = [2 5 5 8];
y = [5 2 8 5];
theta = [3*pi/2 0 pi pi/2];

figure(1);
grid on;
title("Vechicle following the line x-2y+4=0");
xlabel("x[m]");
ylabel("y[m]");
axis([0 10 0 10])

for i = 1:4
    x_start = x(i);
    y_start = y(i);
    theta_start = theta(i);
    out = sim("line_follower.slx");
    
    hold on;
    plot(out.x, out.y, 'b');
end
