t= -6:0.01:6;
fxx=sawtooth(pi*(t-1),0.5);
fxx1=sawtooth(pi*(t-3),0.5);
dw=0.1;T=0.01;
w=-4*pi:dw:4*pi;
F=fxx*exp(-1i*t'*w)*T;
Fx=fxx1*exp(-1i*t'*w)*T;
F1=abs(F);
phaF=angle(F);
F1x=abs(Fx);
phaFx=angle(Fx);
subplot(221);
stem(w,F1,'fill'); grid on
axis([0 2 0 0.5]);
subplot(222);
stem(w,phaF,'fill'); grid on
axis([-1 1.5 0 3.5]);
subplot(223);
stem(w,F1x,'fill'); grid on
axis([0 2 0 0.5]);
subplot(224);
stem(w,phaFx,'fill'); grid on
axis([-1 1.5 0 3.5]);