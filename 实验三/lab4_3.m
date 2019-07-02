t=-6:0.01:6;
f1=sinc(t/pi);
dw=0.1;T=0.01;
w=-4*pi:dw:4*pi;
F1=f1*exp(-1i*t'*w)*T;
subplot(121);
plot(w,F1); grid on
axis([-3 3 -0.5 4]);
f2=heaviside(t+1)-heaviside(t-1);
F2=f2*exp(-1i*t'*w)*T;
subplot(122);
plot(w,F2); grid on
axis([-3 3 -0.5 4]);
