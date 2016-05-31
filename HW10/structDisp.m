function char = structDisp (s)
[r c] = size(s);
col = [];
char = [];
for i = 1:r
    for j = 1:c
        temp = struct2charArr(s(i,j));
        temp(:,end+1:end+50) = ' ';
        col = [col temp(:,1:50)];
    end
    char = [char; col];
    col = [];
end
end