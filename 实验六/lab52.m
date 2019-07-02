b1=[1 -0.2];
b2=[1 -0.5];
b3=[1 -0.8];
a=[1];

z1=roots(b1);
z2=roots(b2);
z3=roots(b3);
p1=roots(a);

n=(0:500)*pi/500;
[H1,w]=freqz(b1,a,n);
subplot(221);
plot(w/pi,abs(H1));grid
axis([0 1 1.1*min(abs(H1)) 1.1*max(abs(H1))]);
title('幅频响应/零点为0.2');

[H2,w]=freqz(b2,a,n);
subplot(222);
plot(w/pi,abs(H2));grid
axis([0 1 1.1*min(abs(H2)) 1.1*max(abs(H2))]);
title('幅频响应/零点为0.5');

[H3,w]=freqz(b3,a,n);
subplot(223);
plot(w/pi,abs(H3));grid
axis([0 1 1.1*min(abs(H3)) 1.1*max(abs(H3))]);
title('幅频响应/零点为0.8');