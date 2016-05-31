function [out, arr] = feeFiFauxPho (pho, ing)
[num txt raw] = xlsread(ing);
fid = fopen(pho);
%low level, open the file and get first and second lines
fline = fgetl(fid);
fline = fgetl(fid);
check = [];
% a check to make sure all the values are within the shopping list
ndxa = strcmp('Amount', raw(1,:));
ndxu = strcmp('Unit', raw(1,:));
ndxi = strcmp('Ingredient', raw(1,:));
CA = [raw(:, ndxa), raw(:, ndxu), raw(:, ndxi)];
%make new vector right away
aleft = raw(:, ndxa);
%while loop to go through the lines
    while ischar(fline)
        [a rest] = strtok(fline, ' ');
        a = str2num(a);
        [u rest] = strtok(rest, ' ');
        in = rest(2:end);
        ndxas = strcmp(CA(:, 3), in);
        %find the amount of ingredients left
        if any(ndxas) & strcmp(CA(ndxas, 2), u) & a <= CA{ndxas, 1}
            aleft{ndxas} = CA{ndxas, 1} - a;
            check = [check true];
        else
            check = [check false];
        end
        fline = fgetl(fid);
    end
    %separate if all the ingredients were bought
    if all(check)
        out = true;
        arr = [aleft, CA(:, 2:end)];
    else
        out = false;
        arr = CA;
    end
end