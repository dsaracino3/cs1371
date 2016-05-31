function out = caesarCipher(in, shift)
%the real deal this time, not some salad shit
logUp = in >= 'A' & in <= 'Z';
logLow = in >= 'a' & in <= 'z';
%creating a logical array of the values we need
upper = in(logUp);
lower = in(logLow);
%assigning the values to an array by logical indexing
Upper = uCipher(upper, shift);
Lower = lCipher(lower, shift);
%calling the functions, didn't use my own, used the solutions from last
%week's hw
in(logUp) = Upper;
in(logLow) = Lower;
%assigning the values to in by logical indexing, how fancy
%i tried this before with for and if statement left the code here because
%whatever, it works but logical indexing is cool also
%for c = 1:length(in)
%    if (in(c) <= 90 && in(c) >= 65)
%        in(c) = uCipher(in(c), shift);
%    elseif (in(c) <= 122 && in(c) >= 97)
%        in(c) = lCipher(in(c), shift);
%    else
%        in(c) = in(c);
%    end
%        
%end
out = char(in);
%casting as char and outputting
end

%function for lower case letters
function lower = lCipher (in, shift)
%determine the acutal shift
shiftBase = mod(shift, 26);
%remove the extra numbers from ascii and make a zero
wordBase = in - 97;
%add that up to account for shift
shifted = wordBase + shiftBase;
%wrap around the alphabet with mod and bring back to ascii
lower = (mod(shifted,26) + 97);
end

%function for uppercase letters
%basically same function but with numbers on ascii for upper case
function upper = uCipher (in, shift)
shiftBase = mod(shift, 26);
wordBase = in - 65;
shifted = wordBase + shiftBase;
upper = (mod(shifted,26) + 65);
end