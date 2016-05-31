function recursiveCampanile (l, r, s)
view(3);
xlabel('x-axis');
ylabel('y-axis');
zlabel('z-axis');
title('My Campanile');
h = 0;
c = 1;
x = [l/2, l/2, -1*l/2, -1*l/2, l/2];
y = [l/2, -1*l/2, -1*l/2, l/2, l/2];
z = [h,h,h,h,h];
lc = length(s);
plot3(x,y,z, s(lc))
hold on;
recursiveHelper(.9*l,r,s,h+1,c+1,r);
end

function recursiveHelper (l, r, s, h, c, o)
if .9*l < 1
    x = [l/2, l/2, -1*l/2, -1*l/2, l/2];
    y = [l/2, -1*l/2, -1*l/2, l/2, l/2];
    xy = [cos(r), -1*sin(r); sin(r), cos(r)] * [x;y];
    x = xy(1,:);
    y = xy(2,:);
    z = [h,h,h,h,h];
    lc = length(s);
    if c <= lc 
        p = c;
    elseif mod(c,lc) == 0
        p = lc;
    else
        p = mod(c, lc);
    end
    plot3(x,y,z, s(p))
    axis equal;
else
    x = [l/2, l/2, -1*l/2, -1*l/2, l/2];
    y = [l/2, -1*l/2, -1*l/2, l/2, l/2];
    xy = [cos(r), -1*sin(r); sin(r), cos(r)] * [x;y];
    x = xy(1,:);
    y = xy(2,:);
    z = [h,h,h,h,h];
    lc = length(s);
    if c <= lc 
        p = c;
    elseif mod(c,lc) == 0
        p = lc;
    else
        p = mod(c, lc);
    end
    plot3(x,y,z, s(p))
    recursiveHelper(.9*l,r+o,s,h+1,c+1,o);
end
end