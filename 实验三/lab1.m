t= -6:0.01:6;
fxx=sawtooth(pi*(t-1),0.5);
f1= fourierseries(3,t);
f2= fourierseries(9,t);
f3= fourierseries(21,t);
f4= fourierseries(45,t);
subplot(321);
plot(t,fxx,'r',t,f1,'b');
grid on
axis([-6 6 0 1.1]);
subplot(322);
plot(t,fxx,'r',t,f2,'b');
grid on
axis([-6 6 0 1.1]);
subplot(323);
plot(t,fxx,'r',t,f3,'b');
grid on
axis([-6 6 0 1.1]);
subplot(324);
plot(t,fxx,'r',t,f4,'b');
grid on
axis([-6 6 0 1.1]);

dw=0.1;T=0.01;
w=-4*pi:dw:4*pi;
F=fxx*exp(-1i*t'*w)*T;
F1=abs(F);
phaF=angle(F);
subplot(325);
stem(w,F1,'fill'); grid on
axis([0 2 0 0.5]);
subplot(326);
stem(w,phaF,'fill'); grid on
axis([-1 1.5 0 3.5]);

