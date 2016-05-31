function resize = asciiResize (original, scale)
%find dimenstions of the array
[x, y] = size(original);
%use vecresize linspace from last week for rows and columns
rows = round(linspace(1, x, round(x.*scale)));
cols = round(linspace(1, y, round(y.*scale)));
%create a vector for the answer 
resize = ones(round(x.*scale), round(y.*scale));
%fill the elements of the array with the new rows and cols
resize(:,:) = original(rows,cols);
%output as the char
resize = char(resize);
end