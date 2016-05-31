function [b] = backCalculate (a, h)
%use pythagorean theorem to define the value of the missing side
b = sqrt(h.^2 - a.^2);
end