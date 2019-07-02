% duty=0.5
t=-6:0.01:6;
T=0.01;
f=square(t,50);
dw=0.1;
w=-4*pi:dw:4*pi;
F=f*exp(-1i*t'*w)*T;
F1=abs(F);
phaF=angle(F);
subplot(321);
stem(w,F1,'fill'); grid on
axis([-3 3 0 8]);
subplot(322);
stem(w,phaF,'fill'); grid on
axis([-2 2 0 4]);

%duty=0.25
f1=square(t,25);
Fx=f1*exp(-1i*t'*w)*T;
F1x=abs(Fx);
phaFx=angle(Fx);
subplot(323);
stem(w,F1x,'fill'); grid on
axis([-3 3 0 8]);
subplot(324);
stem(w,phaFx,'fill'); grid on
axis([-2 2 0 4]);

%duty=0.125
f2=square(t,12.5);
Fxx=f2*exp(-1i*t'*w)*T;
F1xx=abs(Fxx);
phaFxx=angle(Fxx);
subplot(325);
stem(w,F1xx,'fill'); grid on
axis([-3 3 0 8]);
subplot(326);
stem(w,phaFxx,'fill'); grid on
axis([-2 2 0 4]);