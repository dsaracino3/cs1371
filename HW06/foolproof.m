function out = foolproof (in)
%if the number is not natural, it won't be divisible by zero
    if mod(in,1)~=0
        out = 'Please input a natural number.';
        %is logical will check if it is logical
    elseif islogical(in)
        out = 'The input type is invalid. Please input a natural number.';
        %and ischar for characters
    elseif ischar(in)
        out = 'When you use the '' symbol, it clogs the gears in the computer''s calculator. Please input a natural number.';
%if user did input something viable we reun the original function   
    else
        out = powerOfTwo(in);
    end
end
%function downloaded from homework solutions, just to make sure its right
function [yesOrNo] = powerOfTwo(decimal)
    
    binString = dec2bin(decimal);
    
    mask = binString == '1';
    toMask = ones(1,length(binString));
    total = sum(toMask(mask));
    
    yesOrNo = (total==1); % & (checkTwo);

end