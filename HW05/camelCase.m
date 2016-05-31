function out = camelCase (in)
%make everything lower case first
maskL = in > 'A' | in <'Z';
in(maskL) = lower(in(maskL));
%then find the ones that need to be made uppercase
maskU = find(in == ' ') + 1;
in(maskU) = upper(in(maskU));
%find the ones that need to be deleted, first symbols and spaces
maskD = in < 'A' | in > 'z' | (in < 'a' & in > 'Z');
in(maskD) = [];
%now vowels, except first letter in case it is
maskvD = (in == 'a' | in == 'e' | in == 'i' | in == 'o' | in == 'u');
maskvD(1) = false;
in(maskvD) = [];
out = in;
end