t=sym('t');
f=initialsignal(t);
f1=initialsignal(3-4*t);
subplot(121);
fplot(f1);
grid on
axis([0,1,-1.5,1.5]);
f2=initialsignal(1-t/1.5);
subplot(122);
fplot(f2);
grid on
axis([-2,2,-2,2]);