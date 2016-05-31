function st = dataRead (fn)
fh = fopen(fn);
line = fgetl(fh);
[str, rest] = strtok(line,',');
fd = {str};
while ~isempty(rest)
    [str, rest] = strtok(rest,',');
    fd = [fd, {str}];
end
fd = fd(1:end-1);
line = fgetl(fh);
st = struct();
allvals = [];
while ischar(line)
    [val, rest] = strtok(line, ',');
    vals = str2double(val);
    while ~isempty(rest)
        [val, rest] = strtok(rest, ',');
        vals = [vals, str2double(val)];
    end
    allvals = [allvals; vals];
    line = fgetl(fh);
end
for i = 1:length(fd)
    st.(fd{i}) = allvals(:, i);
end
end