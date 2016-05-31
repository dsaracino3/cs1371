function out = punchLine (in)
fn = fopen(in);
line = fgetl(fn);
cs = 0;
cd = 0;
cg = 0;
while ischar(line)
    [word rest] = strtok(line);
    while ~isempty(word)
        if strcmp(word, 'side')
            cs = cs + 1;
        elseif strcmp(word, 'duck')
            cd = cd + 1;
        elseif strcmp(word, 'girl')
            cg =  cg + 1;
        end
        [word rest] = strtok(rest);
    end
    line = fgetl(fn);
end
    c = [cs, cd, cg];
    [~, i] = max(c);
    if i == 1
        out = 'To get to the other side!';
    elseif i == 2
        out = 'To get away from the duck!';
    elseif i == 3
        out = 'To see about a girl!';
    end
end