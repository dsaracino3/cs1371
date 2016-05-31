function name = australianSecretAgent (str)
%open
fstr = fopen(str);
line1 = fgetl(fstr);
line2 = fgetl(fstr);
%find names in conversation
[name1 ~] = strtok(line1, ':');
[name2 ~] = strtok(line2, ':');
count1 = 0;
count2 = 0;
%loop and count number of times word is said
    while ischar(line1) | ischar(line2)
        count1 = count1 + length(strfind(lower(line1), 'barbie')) + length(strfind(lower(line1), 'prawn')) + length(strfind(lower(line1), 'ripper'));
        count2 = count2 + length(strfind(lower(line2), 'barbie')) + length(strfind(lower(line2), 'prawn')) + length(strfind(lower(line2), 'ripper'));
        line1 = fgetl(fstr);
        line2 = fgetl(fstr);
    end
    %conditional to output who said more than four times
if count1 > 4 
    name = name1;
elseif count2 > 4 
    name = name2;
end