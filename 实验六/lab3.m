b=[0.2 0.1 0.3 0.1 0.2];
a=[1 -1.1 1.5 -0.7 0.3];
z=roots(b);
p=roots(a);
subplot(121);
zplane(b,a);
title('系统的零极点分布图');
subplot(122);
impz(b,a,20);
title('系统的单位响应');