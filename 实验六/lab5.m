b=[1];
a1=[1 -0.2];
a2=[1 -0.5];
a3=[1 -0.8];
z=roots(b);
p1=roots(a1);
p2=roots(a2);
p3=roots(a3);

n=(0:500)*pi/500;
[H1,w]=freqz(b,a1,n);
subplot(221);
plot(w/pi,abs(H1));grid
axis([0 1 1.1*min(abs(H1)) 1.1*max(abs(H1))]);
title('幅频响应/级点为0.2');

[H2,w]=freqz(b,a2,n);
subplot(222);
plot(w/pi,abs(H2));grid
axis([0 1 1.1*min(abs(H2)) 1.1*max(abs(H2))]);
title('幅频响应/级点为0.5');

[H3,w]=freqz(b,a3,n);
subplot(223);
plot(w/pi,abs(H3));grid
axis([0 1 1.1*min(abs(H3)) 1.1*max(abs(H3))]);
title('幅频响应/级点为0.8');

subplot(224);
zplane(b,a1);
