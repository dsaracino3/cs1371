function out = twinPrimes (in)
%create the two vectors for addition of two and subtraction of two
inplustwo = in + 2;
inminustwo = in - 2;
%use logical operators
%either both the original and addition of two or the subtraction of two an
%the original
out = (isprime(in) & isprime(inplustwo)) | (isprime(in) & isprime(inminustwo));
end