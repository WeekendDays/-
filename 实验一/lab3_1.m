t=sym('t');
f=initialsignal(t);
subplot(121);
fplot(f+f);
grid on
axis([-1,3,-3,3]);
subplot(122);
fplot(f*f);
grid on
axis([-3,3,-3,3]);