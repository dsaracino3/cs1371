function ex = scottSterling (pos)
%declare the variables
ex = 0;
x1 = 12;
y1 = 6;
%the for loop starting at the starting point
    for i = 1:length(pos)
        x2 = pos(1,i);
        y2 = pos(2,i);
        %find the positions then calculate the distance and add it with an
        %if statement if it is within the goal
        if x2 <= 24 && y2 <= 8 && x2 >= 0 && y2 >= 0
            ex = ex + distCalc(x1, y1, x2, y2);
            x1 = x2;
            y1 = y2;
        end
    end
ex = ex./8;
end

function d = distCalc (xone, yone, xtwo, ytwo)
%distance between two points with point a then point b 
d = sqrt(((xtwo-xone).^2) + ((ytwo-yone).^2));
end