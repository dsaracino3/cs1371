function s = rainfall (s, h)
if h <= 0
    out = s;
else
    if s >= 4
        s = rainfall(.5*s, h-50);
    else
        s = rainfall(1.5*s, h-50);
    end
end
end