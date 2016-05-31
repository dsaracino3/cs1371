function [p, n] = quad (a, b, c)
%define added part of the root from the quadratic formula
p = (-b + sqrt(b.^2 - 4.*a.*c))./(2.*a);
%define subtracted part of the root from the quadratic formula
n = (-b - sqrt(b.^2 - 4.*a.*c))./(2.*a);
end