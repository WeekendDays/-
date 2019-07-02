n=0:100;
f1=5*(u(n)-u(n-20));
f11=5*(u(n-1)-u(n-21));
x1=f1-f11;
subplot(221)
stem(n,x1);
title('¾ØĞÎÂö³å');

f2=n.*(u(n)-u(n-10))+(20-n).*(u(n-10)-u(n-20));
f22=n.*(u(n-1)-u(n-11))+(21-n).*(u(n-11)-u(n-21));
x2=f2-f22;
subplot(222);
stem(n,x2);
title('Èı½ÇÂö³å');

f3=sin(pi*n/25).*(u(n)-u(n-100));
f33=sin(pi*(n-1)/25).*(u(n-1)-u(n-101));
x3=f3-f33;
subplot(223);
stem(n,x3);
title('ÕıÏÒÂö³å');