close all;
clear all;
clc;
[x,fs]=audioread('bird.wav');
prm=1000;
x=x(:);
y = [x zeros(1,prm)] + 0.5*[zeros(1,prm) x];
y2=x;
for i=prm+1:N 
    y2(i)=y2(i)+0.5*x(i-1000)+0.5*x(i-2000)+0.5*x(i-3000)+0.5*x(i-4000)+0.5*x(i-5000)+0.5*x(i-6000);
end
   sound(x,fs);
   pause;
   sound(y,fs);
   pause;
   sound(y2,fs);
