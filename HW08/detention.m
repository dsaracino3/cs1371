function str = detention (text, sent)
%open file and get first line
fid = fopen(text);
line = fgetl(fid);
vec = [];
%loop through the file line by line and compare each line and create a
%logical index
    while ischar(line)
        if strcmp(line, sent)
            vec  = [true,vec];
        else
            vec = [false,vec];
        end
        line = fgetl(fid);
    end
    %create output
    if all(vec)
        str = 'Good job. You are free to go!';
    else
        str = 'Not so fast. Start all over!';
    end
end