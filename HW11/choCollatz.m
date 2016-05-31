function [left, kids] = choCollatz (start)
if start < 2
    left = start;
    kids = 0;
elseif mod(start,2) == 0
    [left, kids] = choCollatz(start./2);
    kids = kids + 1;
else
    [left, kids] = choCollatz((start.*3 + 1)./2);
    kids = kids + 1;
end
end