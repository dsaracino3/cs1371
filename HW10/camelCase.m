function [camel] = camelCase(normal)
% lowercase the entire input phrase
normal = lower(normal);
% find the location of the spaces
ind = find(normal == ' ');
% uppercase the positions following each space
normal(ind+1) = upper(normal(ind+1));

% use logical mask to find alphebetic characters
mask = (normal <= 'z' & normal >= 'a') | (normal <= 'Z' & normal >= 'A');
normal = normal(mask);
% leave the first position alone
first=normal(1);

% find the extraneous vowels and replace them with an empty char
rest=normal(2:end);
% index=find(rest== 'a' | rest== 'e' | rest== 'i' | rest== 'o' | rest== 'u');
% rest(index)= '';

% attach the first character back to the beggining of the string
normal=[first rest];
camel = normal;
end

