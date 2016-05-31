function num = determinant (arr)
if size(arr) == 2
    num = arr(1).*arr(4) - arr(2).*arr(3);
else
    col = arr(1, :);
    num = 0;
    for i = 1:length(col)
       val = arr(i,1);
       if mod(i,2) == 0
           cof = -1;
       else
           cof = 1;
       end
       newArr = [arr(1:i-1,2:end); arr(i+1:end, 2:end)];
       det = determinant(newArr);
       comp = det.*cof.*val;
       num = num + comp;
    end
end
end