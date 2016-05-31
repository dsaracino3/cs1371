function avg = meanEven (in)
%create an array of the even digits using mod and ==
even = in(mod(in,2) == 0);
%take the average of all those evens
avg = sum(even)/length(even);
end