function out = passwordProtector(in)
%time for while loops now
    while mean(in) < 160
        %all the steps now
        in(isspace(in)) = [];
        in(in=='A') = char(192);
        in(in=='O') = char(212);
        in(in=='e') = char(235);
        in(in=='z') = char(191);
        %this was tricky, i thought you replace the characters, didn't
        %realize what the problem was until later, but i did with a find
        %and if statement, same for b and f, except for before and after
        if any(in=='b')
        a = find(in=='b');
            for i = 1:length(a)
                a = find(in=='b');
                in = [in(1:a(i)), char(223), in((a(i)+1):end)];
            end
        end
        
        if any(in=='F')
        b = find(in=='F');
            for j = 1:length(b)
                b = find(in=='F');
                in = [in(1:(b(j)-1)), char(176), in(b(j):end)];
            end
        end
        
        in = caesarCipher(in, 1);
    end
out = in;
end

function [codedString] = caesarCipher(string, shift)
%{
ceasarCipher Function Solution:
Takes in a string and uses caesarLow and caesarUpp as helper functions to 
solve the problem.
%}

%First create a logical mask to work only with the letters (lower or
%upper) of the string
maskLow = (string>='a' & string<='z');
maskUpp = (string>='A' & string<='Z');

%Call on the helper functions shift the letters appropriately
string(maskLow) = caesarLow(string(maskLow), shift);
string(maskUpp) = caesarHigh(string(maskUpp), shift);
codedString = string;
end

function [codeLower] = caesarLow(low, shiftNum)
%{
caesarSalad (Updated) Function Solution:
Takes in a word and shifts the letters based on a shift integer (positive
or negative)
%}

%Shift the lower based on the capped shift number
lowShift = low + shiftNum;

%Canvert lowercase into a range between (0 and 25) + shift.  Mod this with
%26.  Reshift to 'a'-'z' by adding 'a'.
newLow = mod(lowShift - 'a', 26) + 'a';

%Convert ASCII values back to characters
codeLower = char(newLow);
end

function [codeUpper] = caesarHigh(upp, shiftNum)
%{
caesarSalad (Updated) Function Solution:
Takes in a word and shifts the letters based on a shift integer (positive
or negative)
%}

%Shift the lower based on the capped shift number
highShift = upp + shiftNum;

%Canvert uppercase into a range between (0 and 25) + shift.  Mod this with
%26.  Reshift to 'A'-'Z' by adding 'A'.
newHigh = mod(highShift - 'A', 26) + 'A';

%Convert ASCII values back to characters
codeUpper = char(newHigh);
end
