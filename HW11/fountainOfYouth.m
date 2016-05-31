function log = fountainOfYouth(arr)
if size(arr) <= 2
    if any(any(arr == 'X'))
        log = true;
    else
        log = false;
    end
else
    rows = any(arr(1, :) == ' ') | any(arr(end, :) == ' ');
    cols = any(arr(:, end) == ' ') | any(arr(:, 1) == ' ');
    if rows | cols
        if size(arr) > 4
            log = fountainOfYouth(arr(3:end-2, 3:end-2));
        elseif size(arr) == 4
            log = fountainOfYouth(arr(2:3, 2:3));
        elseif size(arr) == 3
            log = fountainOfYouth(arr(2, 2));
        end
    else
        log = false;
    end
end
end