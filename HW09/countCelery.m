function stolen = countCelery (cell, tot)
count = 0;
%for loop to go through the cell array
    for i = 1:length(cell)
        %if to compare then add to the count
        if strcmp(cell(i), 'celery') & iscell(cell(i))
            count = count + 1;
        end
    end
stolen = tot - count;
end