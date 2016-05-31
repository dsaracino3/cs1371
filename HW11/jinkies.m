function [name, count] = jinkies (s)
names = fieldnames(s);
if ~isstruct(s.(names{end}))
    name = s.(names{1});
    count = 0;
else
    [name, count] = jinkies(s.(names{end}));
    count = count + 1;
end
end