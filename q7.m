d=30;
sigma = 0.1; 
x = ones (1,100);
y = [zeros(1,d) x;];
xhat = [ x zeros(1,d)];
noisey = sigma * randn(size(y));
y = y + noisey;
rxy = xcorr(xhat,y);
figure;
subplot(311);
plot(xhat);
subplot(312);
plot(y);
subplot(313);
plot(rxy);
[val,ind]= max(rxy)
