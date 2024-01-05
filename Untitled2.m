

[x,fs]=audioread('bird.wav');
N=length(x);
prm=1000;
x=x(:)';
y=[x zeros(1,prm)]+0.5*[zeros(1,prm) x];
y2=x;
for i=prm+1:N
            y2(i)=y2(i)+0.5*x(i-prm);
end

%  sound(x,fs);
 
 
 sound(y,fs);
 
 sound(y2,fs);