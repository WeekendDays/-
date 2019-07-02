t=sym('t');
f1=heaviside(t)*(2-exp(-t));
f2=heaviside(cos(t));
subplot(221);
ezplot(f1,[-10,10]);
grid on
axis([-10 10 -0.1 3.1]);
subplot(222);
ezplot(f2,[-10,10]);
grid on
axis([-10 10 -0.1 2.1]);