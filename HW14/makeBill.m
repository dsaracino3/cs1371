function [xx, yy, zz] = makeBill (l, r)
x = linspace(0,l);
rr = ones(100, 100) * r;
th = linspace(0,pi);
[xx, thth] = meshgrid(x, th);
yy = rr.*cos(thth);
zz = rr.*sin(thth);
end