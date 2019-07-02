b=[0.1 0 0.4 0 0.4 0 0.1];
a=[1 0 -0.3 0 0.6 0 -0.2];
z=roots(b);
p=roots(a);
zplane(b,a);
title('ϵͳ���㼫��ֲ�ͼ');
n=(0:500)*pi/500;
figure(2)
[H,w]=freqz(b,a,n);

subplot(221);
plot(w/pi,abs(H));grid
axis([0 1 1.1*min(abs(H)) 1.1*max(abs(H))]);
title('���Է�Ƶ��Ӧ')

subplot(222);
plot(w/pi,angle(H));grid
axis([0 1 1.1*min(angle(H)) 1.1*max(angle(H))]);
title('��Ƶ��Ӧ')

db=20*log10(abs(H));
subplot(223);
plot(w/pi,db);grid
axis([0 1 -100 5]);
title('��Է�Ƶ��Ӧ(dB)');

grd=grpdelay(b,a,w);
subplot(224);
plot(w/pi,grd);grid
title('Ⱥ�ӳ�');