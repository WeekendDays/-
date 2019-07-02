t=-6:0.01:6;
f=heaviside(t);
ft1=f1.*exp(-1i*pi*t);
dw=0.1;T=0.01;
w=-4*pi:dw:4*pi;
F=f*exp(-1i*t'*w)*T;
F1=ft1*exp(-1i*t'*w)*T;
Fa=abs(F);
Fa1=abs(F1);
subplot(121);
stem(w,Fa,'fill'); grid on
axis([-2 2 0 10]);
subplot(122);
stem(w,Fa1,'fill'); grid on
axis([-2 2 0 10]);