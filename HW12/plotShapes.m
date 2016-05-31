function plotShapes (str, len, deg, trans)
if strcmp(str, 'circle')
    r = len./2;
    theta = linspace(0,2*pi);
    x = r.*cos(theta);
    y = r.*sin(theta);
    x = x + trans(1);
    y = y + trans(2);
    plot(x, y, 'k-');
    axis([-1.*len, len, -1.*len, len]);
    axis square;
elseif strcmp(str, 'square')
    s = len./2;
    sx = [s, -1.*s, -1.*s, s, s];
    sy = [s, s, -1.*s, -1.*s, s];
    x = [];
    for i = 1:length(sx)
        x = [x, [sx(i), sy(i)]* [cosd(deg), sind(deg); -1.*sind(deg), cosd(deg)]];
    end
    sx = x(2:2:end);
    sy = x(1:2:end);
    sx = sx + trans(1);
    sy = sy + trans(2);
    plot(sx, sy, 'k-');
    axis([-1.*len, len, -1.*len, len]);
    axis square;
end
end