clear all;
close all;
clc;
 
[x,fs]=audioread('bird.wav');
[y,fs]=audioread('gong.wav');
z = y + [x;zeros(28899,1)];
plot (z);

