function [final] = arrReplace (original, replacement, num)
%create a mask for which elements we want to change
mask = original == num;
%change those elements
original(mask) = replacement(mask);
%output
final = original;
end