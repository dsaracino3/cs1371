function count = countNum (arr, num)
count = 0;
%a counter to count
[r c] = size(arr);
% find the size of the rows and columns
    for i = 1:r
        %for loops for rows and then columns
        for j = 1:c
            %replace
            if arr(i,j) == num
                count = count + 1;
            end
        end
    end
end