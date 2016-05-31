function [xx, yy, zz] = rotateObject (xx, yy, zz, ax, ang)
xx = reshape(xx, 1, []);
yy = reshape(yy, 1, []);
zz = reshape(zz, 1, []);
xyz = [xx;yy;zz];
if ax == 'x'
    xyz = [1, 0, 0; 0, cos(ang), -1.* sin(ang); 0, sin(ang), cos(ang)]* xyz;
elseif ax == 'z'
    xyz = [cos(ang), -1.* sin(ang), 0; sin(ang), cos(ang), 0; 0, 0, 1]* xyz;
elseif ax == 'y'
    xyz = [cos(ang), 0, sin(ang); 0, 1, 0; -1.* sin(ang), 0, cos(ang)]* xyz;
end
xx = xyz(1,:);
xx = reshape(xx, 100, []);
yy = xyz(2,:);
yy = reshape(yy, 100, []);
zz = xyz(3,:);
zz = reshape(zz, 100, []);
end