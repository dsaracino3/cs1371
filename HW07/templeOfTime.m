function [str, tot] = templeOfTime (start, direction, distance, letter, rupee)
r = start(1);
c = start(2);
%rows and cols for starting
tot = rupee(r,c);
str = letter(r,c);
%start the outputs with the starting values
    while direction(r,c) ~= 'D' & distance(r,c) ~= 0
        %while loop to make sure we are not at the end
        %if statemtns to check what direction
        %and under them adjustemtns for direction
        if direction(r,c) == 'N'
            r = r - distance(r,c);
        elseif direction(r,c) == 'S'
            r = r + distance(r,c);
        elseif direction(r,c) == 'E'
            c = c + distance(r,c);
        elseif direction(r,c) == 'W'
            c = c - distance(r,c);
        end
        %before we loop, add up them rupees and our secret weapon
        tot = tot + rupee(r,c);
        str = [str letter(r,c)];
    end
end