function rc = rollerCoaster (fn, ct, str)
[num, text, raw] = xlsread(fn);
str = lower(str);
rides = raw(2:end, 1);
cats = raw(1, 2:end);
mask = strcmp(cats, ct);
nums = num(:, mask);
if strcmp(str, 'most')
    [~, ind] = max(nums);
    rc = rides{ind};
elseif strcmp(str, 'least')
    [~, ind] = min(nums);
    rc = rides{ind};
else
    rc = 'Just pick one!';
end
end