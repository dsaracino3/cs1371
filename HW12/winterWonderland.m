function winterWonderland (len, num, type)
hold on;
ang = 360./num;
if len <= 5
    plot(0,0,'b');
else
    if type(1) == 'n'
        lens = 0;
        angl = 0;
    elseif type(1) == 'p'
        lens = len./2;
        angl = 360./num;
    elseif type(1) == 's'
        lens = len;
        angl = 360./num;
    elseif type(1) == 'r'
        lens = len./2;
        angl = 720./num;
    end
    x = [0, len];
    y = [0, 0];
    x1 = [];
    x2 = [];
    y1 = [];
    y2 = [];
    if lens ~= 0
        x1 = len + lens*cosd(angl);
        y1 = lens*sind(angl);
        x2 = x1;;
        y2 = -1.*y1;
    end
        for i = 1:num
            xy1 = [cosd(i*ang), -1.*sind(i*ang); sind(i*ang), cosd(i*ang)] * [x, x1; y, y1];
            xy2 = [cosd(i*ang), -1.*sind(i*ang); sind(i*ang), cosd(i*ang)] * [x, x2; y, y2];
            plot(xy1(1,:), xy1(2,:), 'b-');
            plot(xy2(1,:), xy2(2,:), 'b-');
        end
    if lens~= 0
        if type(2) == 'h'
            len = len - 200./len;
            winterWonderland(len, num, type);
        elseif type(2) == 'e'
            len = len - 10;
            winterWonderland(len, num, type);
        elseif type(2) == 't'
            len = len.^.85;
            winterWonderland(len, num, type);
        end
    end
end
axis square;
axis off;
end