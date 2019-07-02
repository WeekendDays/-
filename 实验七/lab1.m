a=[1,3,2];
b=[1,2];
sys=tf(b,a);
td=0.01;
t=0:td:10;
y1=impulse(sys,t);
y2=step(sys,t);

subplot(331);
plot(t,y1);
grid on;
xlabel('t(sec)');
title('�弤��Ӧ');

subplot(332);
plot(t,y2);
grid on;
xlabel('t(sec)');
title('��Ծ��Ӧ');

y=t.^2-2*t-2*exp(-2*t)+exp(-t);
subplot(333);
plot(t,y);
grid on;
xlabel('t(sec)');
title('ȫ��Ӧ');

yzs=t.^2-2*t-2*exp(-t)+2;
subplot(334);
plot(t,yzs);
grid on;
xlabel('t(sec)');
title('���ۼ������״̬��Ӧ');

f=t.^2;
yzs1=lsim(sys,f,t);
yzs2=td.*conv(f,y1);
subplot(335);
plot(t,yzs2(1:length(t)));
grid on;
xlabel('t(sec)');
title('����������״̬��Ӧ');

subplot(336);
plot(t,yzs1);
grid on;
xlabel('t(sec)');
title('��lism�����������״̬��Ӧ');

yzi=3*exp(-t)-2*exp(-2*t);
subplot(337);
plot(t,yzi);
grid on;
xlabel('t(sec)');
title('��������Ӧ');

yp=t.^2-2*t+2;
subplot(338);
plot(t,yp);
grid on;
xlabel('t(sec)');
title('ǿ����Ӧ');

yh=-2*exp(-2*t)+exp(-t);
subplot(339);
plot(t,yh);
grid on;
xlabel('t(sec)');
title('������Ӧ');