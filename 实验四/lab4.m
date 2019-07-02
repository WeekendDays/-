n=0:50;
t=0:50;
x1=(n+1).*(0<=n<=3)+(8-n).*(4<=n<=7)+0.*((8<=n<=50));
x2=cos(pi*n/4);
x3=sin(pi*n/8);

k=0:7;
N=length(k);
X11=fft(x1,N);
w=2*pi/N*k;
magX11=abs(X11);
subplot(321);
stem(w/pi,magX11,'fill');grid on;
title('N=8,x1(n)');

k=0:15;
N=length(k);
X12=fft(x1,N);
w=2*pi/N*k;
magX12=abs(X12);
subplot(322);
stem(w/pi,magX12,'fill');grid on;
title('N=16,x1(n)');

k=0:7;
N=length(k);
X21=fft(x2,N);
w=2*pi/N*k;
magX21=abs(X21);
subplot(323);
stem(w/pi,magX21,'fill');grid on;
title('N=8,x2(n)');

k=0:15;
N=length(k);
X22=fft(x2,N);
w=2*pi/N*k;
magX22=abs(X22);
subplot(324);
stem(w/pi,magX22,'fill');grid on;
title('N=16,x2(n)');

k=0:7;
N=length(k);
X31=fft(x3,N);
w=2*pi/N*k;
magX31=abs(X31);
subplot(325);
stem(w/pi,magX31,'fill');grid on;
title('N=8,x3(n)');

k=0:15;
N=length(k);
X32=fft(x3,N);
w=2*pi/N*k;
magX32=abs(X32);
subplot(326);
stem(w/pi,magX32,'fill');grid on;
title('N=16,x3(n)');
