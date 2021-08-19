clc
clear all

%%
% loading parameters needed for running simscape simulation
load('parameters.mat')
%%
% motion planning for simscape simulation
%plynomianl 4 5 6 7  
a = -20;
b = 70;
c = -84;
d = 35;
e = 0;
f = 0;
tf = 1;
Ts = 0.0001;
T = 0 : Ts: tf;

beta = atan(128/24);
% initial theta :
theta_i = [0 ; 0 ; 0 ; 0 ];
% final theta :
% theta_f = [pi/4 ; pi/4 ; pi/4 ; pi/3 ];
theta_f = [-pi/2 ; pi/3 ; pi/6 ; -pi/5 ];
clear theta1_num theta2_num theta3_num theta4_num
p = 0;
% TAV = zeros(4, 1 + tf / Ts);
for j = 0 : Ts : tf
    p = p + 1;
    s(p) = a * j^ 7 + b * j ^ 6 + c * j ^ 5 + d * j ^ 4;
    s_prime(p) = 7*a*j^6 + 6*b*j^5 + 5*c*j^4 + 4*d*j^3;
    s_second(p) = 42*a*j^5 + 30*b*j^4 + 20*c*j^3 + 12*d*j^2;
    
    theta = theta_i + (theta_f - theta_i) * s(p);
    theta = theta - round( theta /2 / pi ) *2*pi;
    
    theta1_num(p) = theta(1);
    theta2_num(p) = theta(2);
    theta3_num(p) = theta(3);
    theta4_num(p) = theta(4);
    
    theta_dot = (theta_f - theta_i) * s_prime(p) / tf;
    theta_ddot = (theta_f - theta_i) * s_second(p) / tf^2;
    
    theta1_dot_num(p) = theta_dot(1);
    theta2_dot_num(p) = theta_dot(2);
    theta3_dot_num(p) = theta_dot(3);
    theta4_dot_num(p) = theta_dot(4);
    
    theta1_ddot_num(p) = theta_ddot(1);
    theta2_ddot_num(p) = theta_ddot(2);
    theta3_ddot_num(p) = theta_ddot(3);
    theta4_ddot_num(p) = theta_ddot(4);
       
end