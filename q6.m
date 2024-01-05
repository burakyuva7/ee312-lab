clear all;
close all;
clc;
 
[x,fs]=audioread('bird.wav');
[y,fs]=audioread('gong.wav');
z = y + [x;zeros(28899,1)];
plot (z);


clear all;
close all;
clc;
 
[x,fs]=audioread('bird.wav');
[y,fs]=audioread('gong.wav');
z = [x;zeros(28899,1)] - y;
plot (z);
