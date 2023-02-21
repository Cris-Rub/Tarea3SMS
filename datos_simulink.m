clc; clear all;

% t = (0:0.0031:10)';
% [t, x] = ode45(@MOV_TRANS, [0 10], [0 0 0 0]);
m1 = 290;
m2 = 59;
b1 = 1000;
k1 = 16182;
k2 = 19000;
f = 0;
z = 0.05*sin(0.5*pi);
% z = 0.05*sin(20*pi);

open('suspension_auto.slx');