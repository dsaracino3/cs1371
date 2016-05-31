function arr = speedStack(base, ch)
arr = ones(base, base.*2-1);
arr(:,:) = ' ';
col = round(length(arr)./2);
arr = char(speedStackHelper(base, ch, arr, col));
end

function arr = speedStackHelper(base, ch, arr, col)
if base == 1
    arr(base, col) = ch;
else
    base = base - 1;
    [arr] = speedStackHelper(base, ch, arr, col);
    base = base + 1;
    arr(base, col - base + 1:2:col + base) = ch;
end
end