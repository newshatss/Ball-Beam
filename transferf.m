clc, clear all, close all;
num=conv([1],conv([1 3],conv([1 5],[-2000 0 196200])));
%num=conv([1],[-15 0 981]);
%den=conv([1 5],[-400 0 30 0 -1962]);
den=conv([1],conv([1 -sqrt(98.1)],[-80050 0 -2905 0 766161]));
sys=tf(num,den);
rlocus(sys);

