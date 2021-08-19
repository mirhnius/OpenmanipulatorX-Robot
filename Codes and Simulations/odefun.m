function dp = odefun(t, p, th, dth)

i = floor(t*10^4 + 1);

th1 = th(1,i);
th2 = th(2,i);
th3 = th(3,i);
th4 = th(4,i);

dth1 = dth(1,i);
dth2 = dth(2,i);
dth3 = dth(3,i);
dth4 = dth(4,i);

dp = zeros(3,1);

J1 = [-sin(th1)*(0.126*cos(th2+th3+th4) + 0.124*cos(th2+th3) + 0.024*cos(th2));
       cos(th1)*(0.126*cos(th2+th3+th4) + 0.124*cos(th2+th3) + 0.024*cos(th2));
       0];

J2 = [-cos(th1)*(0.126*sin(th2+th3+th4) + 0.124*sin(th2+th3) + 0.024*sin(th2));
      -sin(th1)*(0.126*sin(th2+th3+th4) + 0.124*sin(th2+th3) + 0.024*sin(th2));
       0.126*cos(th2+th3+th4) + 0.124*cos(th2+th3) + 0.128*cos(th2)];
   
J3 = [-cos(th1)*(0.126*sin(th2+th3+th4) + 0.124*sin(th2+th3));
      -sin(th1)*(0.126*sin(th2+th3+th4) + 0.124*sin(th2+th3));
       0.126*cos(th2+th3+th4) + 0.124*cos(th2+th3)];
   
J4 = [-cos(th1)*0.126*sin(th2+th3+th4);
      -sin(th1)*0.126*sin(th2+th3+th4);
       0.126*cos(th2+th3+th4)];
   
J = [J1 , J2 , J3 , J4];

v = J * [dth1;dth2;dth3;dth4];

dp(1) = v(1);
dp(2) = v(2);
dp(3) = v(3);
