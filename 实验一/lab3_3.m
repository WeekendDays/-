syms tao;
t=sym('t','positive');
ft1=initialsignal(t);
ft2=initialsignal(3-4*t);
ft_tao=subs(ft1,t,tao)*subs(ft2,t,t-tao);
ft=int(ft_tao,tao,0 ,t);
ft=simplify(ft);
fplot(ft);
grid on
ylim([-1,1]);