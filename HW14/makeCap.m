function [xx, yy, zz] = makeCap (r, c)
u = linspace(0,r);
v = polyval(c, u);
th = linspace(0,2*pi);
[vv, thth] = meshgrid(v, th);
[uu, thth] = meshgrid(u, th);
rr = uu;
zz = vv;
xx = rr.*cos(thth);
yy  = rr.*sin(thth);
end