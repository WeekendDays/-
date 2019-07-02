wp1=0.4*pi;wp2=0.6*pi;
ws1=0.3*pi;ws2=0.7*pi;
rp=1;rs=20;
fs=1000;
T=1/fs;
omegap1=(2/T)*tan(wp1/2);omegap2=(2/T)*tan(wp2/2);
omegas1=(2/T)*tan(ws1/2);omegas2=(2/T)*tan(ws2/2);
omegap=[omegap1 omegap2];
omegas=[omegas1 omegas2];
bw=omegap2-omegap1;w0=sqrt(omegap1*omegap2);

[N,Wn]=cheb1ord(omegap,omegas,rp,rs,'s');
[z0,p0,k0]=cheb1ap(N,rp);
b1=k0*real(poly(z0));
a1=real(poly(p0));
[b,a]=lp2bp(b1,a1,w0,bw);
[bz1,az1]=impinvar(b,a,fs);
[bz2,az2]=bilinear(b,a,fs);
[h1,w]=freqz(bz1,az1,256,'whole');
[h2,w1]=freqz(bz2,az2,256,'whole');
dbh1=20*log10(abs(h1)/max(abs(h1)));
dbh2=20*log10(abs(h2)/max(abs(h2)));
subplot(121);
plot(w/pi,dbh1);grid
%axis([0 1 -70 10]);
title('³å¼¤ÏìÓ¦');
subplot(122);
plot(w1/pi,dbh2);grid
%axis([0 1 -70 10]);
title('Ë«ÏßÐÔ');


