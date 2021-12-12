clc;
clear all;
close all;

L = 1; 

% https://stackoverflow.com/questions/3838319/how-can-i-check-if-a-point-is-below-a-line-or-not
% need to verify if above or below and then change sign of this kp1
kp1 = 0.5;
kp2 = 1;


%% Setup parameters for simulation

a = 1;
b = -2;
c = 4;

speed = 10;

x = [2 5 5 8];
y = [5 2 8 5];
theta = [3*pi/2 0 pi pi/2];

figure(1);
grid on;
title("Vechicle following the line x-2y+4=0");
xlabel("x[m]");
ylabel("y[m]");
axis([-10 10 -10 10])

% Definition of the linear function to follow
b0 = 1/2;
b1 = 2;
f = @(x) b0*x+b1;
hold on;
fplot(f, [-10 10], 'g-');

%% Line follower simulation

for i = 1:4
    x_start = x(i);
    y_start = y(i);
    theta_start = theta(i);
    
    hold on;
    if y_start >= f(x_start)
        plot(x_start, y_start, '*k');
    else
        plot(x_start, y_start, '*r');
    end
    
    out = sim("line_follower.slx");
    
    hold on;
    plot(out.x, out.y, 'b');
end

hold off
