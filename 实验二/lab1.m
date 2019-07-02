n1=-3:5;
f1=2-0.5.^(-n1);
n2=-5:5;
f2=heaviside(n2);
[f3, n3] = sigmult(f1,n1,f2,n2);
subplot(121);
stem(n3,f3,'fill');xlabel('n3');grid on
axis([-3 4 -7 1.1]);
n4=-3:5;
f4=1.5.^(n4);
n5=-5:5;
f5=sin(n5*pi/5);
[f6,n6] = sigmult(f4,n4,f5,n5);
subplot(122);
stem(n6,f6,'fill');xlabel('n6');grid on
axis([-5 5 -1.1 4]);