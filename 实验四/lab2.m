n=0:10;
%M=length(n);
x=cos(0.48*pi*n)+cos(0.52*pi*n);
k=0:250;
w=(2*pi/250)*k;
x1=x*exp(-1i*2*pi/250).^(n'*k);
subplot(321);
plot(w/pi,x1);grid on;
title('x(k)');

k=0:10;
N=length(k);
X1=fft(x,N);
w=2*pi/N*k;
magX1=abs(X1);
subplot(322);
stem(w/pi,magX1,'fill');grid on;
title('0 <= n <= 10');

k=0:20;
N=length(k);
X2=fft(x,N);
w=2*pi/N*k;
magX2=abs(X2);
subplot(323);
stem(w/pi,magX2,'fill');grid on;
title('²¹ÁãÖÁ20');