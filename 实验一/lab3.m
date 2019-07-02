t=sym('t');
sym f;
f=t*heaviside(t)-t*heaviside(t-1)+heaviside(t-2)-heaviside(t-1);
f1=f+f;
f2=f*f;
f3=diff(f,'t',1);
f4=int(f,'t');
subplot(321);
fplot(f1);
grid on
axis([-2,5,-3,3]);
subplot(322);
fplot(f2);
grid on
axis([-2,5,-3,3]);
subplot(323);
fplot(f3);
grid on
axis([-1,2,-1,1.5]);
subplot(324);
fplot(f4);
grid on
axis([-1,5,-1,1]);
