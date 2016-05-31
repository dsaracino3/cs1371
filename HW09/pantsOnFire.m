function str = pantsOnFire (in)
[~, col] = size(in);
wear = [];
nwear = [];
wstr = '';
nstr = '';
format = 'You should wear the %s, but DO NOT wear the %s.';
%for loop to go though the cell array and see what to wear and what not to
%wear
    for i = 1:col
        if in{2, i} & in{3, i}
            wear = [wear {in{1, i}}];
        else
            nwear = [nwear {in{1, i}}];
        end
    end
    %separate for loops to go through and organize the strings for what to
    %wear and what not to wear
    for i = 1:length(wear)
        if i == 1
            wstr = wear{1,i};
        elseif i == length(wear)
            wstr = [wstr, ' and/or ', wear{1, i}];
        else
            wstr = [wstr, ', ', wear{1,i}];
        end
    end
    for i = 1:length(nwear)
        if i == 1
            nstr = nwear{1,i};
        elseif i == length(nwear)
            nstr = [nstr, ' or ', nwear{1, i}];
        else
            nstr = [nstr, ', ', nwear{1,i}];
        end
    end
str = sprintf(format, wstr, nstr);
end