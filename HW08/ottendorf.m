function [message] = ottendorf (reference, cipher)
%open and line
message = [];
fh = fopen(cipher);
fline = fgetl(fh);
%loop through and end at 0000
%with conditions for punctuation and blank
while ~isequal(fline,'0-0-0-0')
    if strcmp(fline,'')
        message = [message,' '];
    elseif (fline >= 33 & fline <= 47) | (fline >= 58 & fline <= 64) | (fline >= 91 & fline <= 96) | (fline >= 123 & fline <= 126)
        message = [message, fline];
    else
        %otherwise its just finding the location of the letter we want with a bunch of
        %strtoks and then using that info to find the right letter
        [page rest] = strtok(fline, '-');
        [line rest] = strtok(rest, '-');
        line = str2num(line);
        [word rest] = strtok(rest, '-');
        word = str2num(word);
        [letter rest] = strtok(rest, '-');
        letter = str2num(letter);
        str = [reference, '_', page, '.txt'];
        fid = fopen(str,'r');
        fidline = fgetl(fid);
        i = 1;
        while i <= line
            str1 = fidline;
            fidline = fgetl(fid);
            i = i + 1;
        end
        [fidword rest1] = strtok(str1, ' ');
        j = 1;
        while j < word
            [fidword rest1] = strtok(rest1);
            j = j + 1;
        end
        message = [message, fidword(letter)];
    end
    fline = fgetl(fh);
end
fclose(fh);
fclose(fid);
end