t=-6:0.01:6;
T=0.01;
x=tripuls(t,1,0);
dw=0.1;
w=-4*pi:dw:4*pi;
F=x*exp(-1i*t'*w)*T;
F1=abs(F);
phaF=angle(F);
subplot(121);
plot(w,F1); grid on
axis([-3 3 0 0.6]);
subplot(122);
plot(w,phaF); grid on
axis([-0.5 0.5 -1 1]);