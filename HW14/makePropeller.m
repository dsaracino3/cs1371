function [xx, yy, zz] = makePropeller(mn, mx, r)
u = linspace(mn, mx);
th = linspace(0, 2*pi);
v = r.*sin(u);
[uu, thth] = meshgrid(u, th);
[vv, thth] = meshgrid(v, th);
xx = uu;
rr = vv;
yy = rr.*cos(thth);
zz = rr.*sin(thth);
end