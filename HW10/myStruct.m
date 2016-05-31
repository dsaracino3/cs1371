function st = myStruct (ca)
lengths = [];
    for i = 2:2:length(ca)
        lengths = [lengths length(ca{i})];
    end
maxl = max(lengths);
    for i = 1:2:length(ca)
        fieldname = ca{i};
        if length(ca{i+1}) ~= maxl
            for j = 1:maxl
                st(j).(fieldname) = ca{i+1}{1};
            end
        else
            for k = 1:length(ca{i+1})
                st(k).(fieldname) = ca{i+1}{k};
            end
        end
    end
end