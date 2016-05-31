function highRise (in)
[row, ~] = size(in);
l = 0;
r = in(1,2);
h = in(1,1);
x = [l, r, r, l, l];
y = [0, 0, h, h, 0];
plot(x,y, 'b-')
hold on;
for i = 2:row
    l = r + 1;
    r = r + 1 + in(i,2);
    h = in(i,1);
    x = [l, r, r, l, l];
    y = [0, 0, h, h, 0];
    if mod(i,2) == 0
        plot(x,y, 'k-')
    else
        plot(x,y, 'b-')
    end
end