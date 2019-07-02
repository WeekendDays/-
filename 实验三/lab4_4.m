t= -6:0.01:6;
f=heaviside(t+1)-heaviside(t-1);
f1=heaviside((1/2)*t+1)-heaviside((1/2)*t-1);
dw=0.1;T=0.01;
w=-4*pi:dw:4*pi;
F=f*exp(-1i*t'*w)*T;
F1=f1*exp(-1i*t'*w)*T;
subplot(121);
plot(w,F); grid on
axis([-6 6 -0.5 4]);
subplot(122);
plot(w,F1); grid on
axis([-6 6 -0.5 4]);