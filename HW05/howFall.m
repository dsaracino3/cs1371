function [log, string] = howFall (leaves, prediction)
%format for sprintf
formatSpec = 'There will be %d leaves remaining: %d green, %d yellow, %d orange, and %d brown.';
%find the types of leaves at the beginning
brown1 = length(find(leaves <= 3 & leaves >= 1));
orange1 = length(find(leaves <= 9 & leaves >= 4));
yellow1 = length(find(leaves <= 14 & leaves >= 10));
green1 = length(find(leaves >= 15));
%adjust for the prediction
leaves = leaves - prediction;
%find the types of leaves after the prediction
brown = length(find(leaves <= 3 & leaves >= 1));
orange = length(find(leaves <= 9 & leaves >= 4));
yellow = length(find(leaves <= 14 & leaves >= 10));
green = length(find(leaves >= 15));
%find total leaves after prediction
total = brown + orange + yellow + green;
%see if the predcition is right
log = (brown + orange + yellow + green)./(brown1 +orange1 + yellow1 + green1) <= .2;
string = sprintf(formatSpec, total, green, yellow, orange, brown);
end