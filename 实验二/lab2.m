n=-5:5;

f=u(n)-u(n-4);
f1=u(n)-u(n-4)-u(n-1)+u(n-5);
f2=cumsum(f);
f3=fun(3-2*n);
f4=conv(f,f3);

subplot(321);
stem(n,f,'fill');xlabel('n');grid on
axis([-2 5 -0.1 2]);
title('序列f(n)的波形');

subplot(322);
stem(n,f1,'fill');xlabel('n');grid on
axis([-2 5 -1.1 1.1]);
title('f(n)的一阶后向差分');

subplot(323);
stem(n,f2,'fill');xlabel('n');grid on
axis([-1 6 -1 6]);

subplot(324);
stem(n,f3,'fill');xlabel('n');grid on
axis([-1 6 -1 2]);

subplot(325);
m=-10:10;
stem(m,f4,'fill');xlabel('n');grid on
axis([-1 6 -1 2]);