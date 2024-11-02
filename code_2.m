clc;
clear all;
syms M m r I_p I_w g s1 s2 s3 s4 tau l_g b
M=10; I_w=0.2; m=5; I_p=0.2 ; l_g=0.4; b=0.01; r=0.2;
tau=20; g=10; 

Mo=[m*r*l_g*cos(s1) ,M*(r)^2+m*(r)^2+I_w;

    m*(l_g)^2+I_p , m*r*l_g*cos(s1) ];

No=[tau+m*r*l_g*(s2)^2*sin(s1)+b*(s2-s4);

   m*g*l_g*sin(s1)-tau-b*(s2-s4)];

Co=Mo\No;

f2=Co(1,1);

f4=Co(2,1);



A=[0 1 0 0

  diff(f2,s1) diff(f2,s2)  diff(f2,s3)  diff(f2,s4)

  0 0 0 1

  diff(f4,s1) diff(f4,s2)  diff(f4,s3)  diff(f4,s4)];



% X=subs(A,[s1 s2],[0 0]);

x=[    0,      1, 0,      0;

   25, -3/160, 0,  3/160;

    0,      0, 0,      1;

-25/2,  7/320, 0, -7/320];


B=[0;

   diff(f2,tau);

   0;

   diff(f4,tau)];

%Y=subs(B,[s1 s2 s3 s4],[0 0 pi/6 0]);

y=  [0;

-413070397120885075/8;

 0;

923653488280810375/16];

C=[1 0 0 0

   0 0 0 1];

D=[0;

   0];