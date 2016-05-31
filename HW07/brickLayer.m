function arr = brickLayer (row, col, color)
%set all variables before for loops
len = length(color);
color = [' [' color '] '];
space = ones(1, len)*'-';
space = [' [' space '] '];
len = length(space);
cols = 1;
%woah triple for loops for rows and cols and then to add the strings
    for r = 1:row
        cols = 1;
        for c =1:col;
            if mod(r+c, 2)==0
                for x = 1:len
                    arr(r,cols) = color(x);
                    cols = cols + 1;
                end
            else
                for x = 1:len
                    arr(r,cols) = space(x);
                    cols = cols + 1;
                end
            end
        end
    end
end