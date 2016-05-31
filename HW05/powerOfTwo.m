function log = powerOfTwo(num)
%use the dec2bin function to convert decimal number to string binary
num = dec2bin(num);
%a power of two in binary is when only value is a 1 so use logical indexing
%and legnth of the that
log = length(find(num == '1')) == 1;
end