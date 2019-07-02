num=[1 0];
den=[1 5 6];
subplot(221);
pzmap(num,den);
title('R=5');

den1=[1 2 6];
subplot(222);
pzmap(num,den1);
title('R=2');

den2=[1 0.8 6];
subplot(223);
pzmap(num,den2);
title('R=0.8');

den3=[1 0.4 6];
subplot(224);
pzmap(num,den3);
title('R=0.4');

