t=sym('t');
f1=initialsignal(t);
f2=initialsignal(-t);
fe=0.5*(f1+f2);
subplot(121);
fplot(fe);grid on
axis([-5,5,-3,3]);
fo=0.5*(f1-f2);
subplot(122);
fplot(fo);grid on
axis([-5,5,-3,3]);