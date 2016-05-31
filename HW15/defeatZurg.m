function out = defeatZurg (fn, loc)
im = imread(fn);
image(im);
health = 100;
hold on;
[r,c,l] = size(im);
for i = 1:6
    x = loc(1,i);
    y = loc(2,i);
    plot(x,y, 'ro')
    if x <= 2/3*c & x >= 1/3*c & y <= 1/3*r & y >= 0
        health = health - 30;
    else
        health = health - 10;
    end
if health <= 0
    out = 'YOU DEFEATED ZURG!';
else
    out  = 'GAME OVER!';
end
end
end