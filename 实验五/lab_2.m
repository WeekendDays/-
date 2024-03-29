a=[1,5,6];
b=[1,0];
[H,w]=freqs(b,a);
Hm=abs(H);
phai=angle(H);
subplot(421);
plot(w,Hm);
grid on;
title('R=5的幅频响应');
xlabel('Omega(rad/s)');
subplot(422);
plot(w,phai);
grid on;
title('R=5的相频响应');
xlabel('Omega(rad/s)');

a1=[1,4,6];
[H1,w]=freqs(b,a1);
Hm1=abs(H1);
phai1=angle(H1);
subplot(423);
plot(w,Hm1);
grid on;
title('R=4的幅频响应');
xlabel('Omega(rad/s)');
subplot(424);
plot(w,phai1);
grid on;
title('R=4的相频响应');
xlabel('Omega(rad/s)');

a2=[1,2,6];
[H2,w]=freqs(b,a2);
Hm2=abs(H2);
phai2=angle(H2);
subplot(425);
plot(w,Hm2);
grid on;
title('R=2的幅频响应');
xlabel('Omega(rad/s)');
subplot(426);
plot(w,phai2);
grid on;
title('R=2的相频响应');
xlabel('Omega(rad/s)');

a3=[1,0.8,6];
[H3,w]=freqs(b,a3);
Hm3=abs(H3);
phai3=angle(H3);
subplot(427);
plot(w,Hm3);
grid on;
title('R=0.8的幅频响应');
xlabel('Omega(rad/s)');
subplot(428);
plot(w,phai3);
grid on;
title('R=0.8的相频响应');
xlabel('Omega(rad/s)');


