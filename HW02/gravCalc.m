function [Fg] = gravCalc (m, d)
%m and d are the inputs of mass and distance
%Fg is the output of gravity between the Earth and the object
Fg = 6.67e-11.*5.97e24.*m./(d.^2);
end