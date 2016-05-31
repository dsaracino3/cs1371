function out = bondHackBond (fn)
ch = 1;
out = [];
while ch<= 6
    fh = fopen(fn);
    line = fgetl(fh);
    while ischar(line)
        a = line(ch);
        line = fgetl(fh);
        if ischar(line)
            b = line(ch);
            if a == b
                line = fgetl(fh);
                if ischar(line)
                    c = line(ch);
                    if a == c & b == c
                        out = [out, c];
                    end
                end
            end
        end
    end
    ch = ch + 1;
    fclose(fh);
end
end