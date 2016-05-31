function d = distCalc (xone, yone, xtwo, ytwo)
%distance between two points with point a then point b 
d = round(sqrt(((xtwo-xone).^2) + ((ytwo-yone).^2)), 2);
end