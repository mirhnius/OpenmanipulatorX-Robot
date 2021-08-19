clear all
clc

main_4567;

th = [theta1_num;theta2_num;theta3_num;theta4_num];
dth = [theta1_dot_num;theta2_dot_num;theta3_dot_num;theta4_dot_num];

[t, p] = ode23s(@(t,p) odefun(t,p,th,dth), T, [0.274;0;0.077]);

plot(T,p(:,1),'k','LineWidth',1.5);
hold on
plot(T,p(:,2),'b','LineWidth',1.5);
plot(T,p(:,3),'r','LineWidth',1.5);
xlabel('Time (s)')
ylabel('Position (m)')
grid on
legend('X_{EE}','Y_{EE}','Z_{EE}')