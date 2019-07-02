function y= fourierseries(m,t)
y=0.25;
for n=1:m
    y=y+(8*sin(n*pi/4)^2/(n*pi)^2).*cos(n*pi.*t);
end