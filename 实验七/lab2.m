b=[1];
a=[1 3 2];
[H,w]=freqs(b,a);
Hm=abs(H);
phai=angle(H);
Hr=real(H);
Hi=imag(H);

subplot(221);
plot(w,Hm);
grid on;
xlabel('Omega(rad/s)');
title('��Ƶ��Ӧ');

subplot(222);
plot(w,phai);
grid on;
xlabel('Omega(rad/s)');
title('��Ƶ��Ӧ');

subplot(223);
plot(w,Hr);
grid on;
xlabel('Omega(rad/s)');
title('Ƶ����Ӧ��ʵ��');

subplot(224);
plot(w,Hi);
grid on;
xlabel('Omega(rad/s)');
title('Ƶ����Ӧ���鲿');
