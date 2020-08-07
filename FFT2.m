clc;clear all;close all
t=0:4*pi/1024:4*pi;
f1=1;
f2=10;
y=2*sin(2*pi*f1*t)+sin(2*pi*f2*t);
[essai]=wavread('C:\essai.wav')
