function cost = dormTape (blocks, gold, white, blue, ratio)
%define the rounded amount of tape that has to be bought for each of
%the different colors of blocks
Gold = ceil(blocks.*gold./ratio);
White = ceil(blocks.*white./ratio);
Blue = ceil(blocks.*blue./ratio);
%define the subtotal as the amount of tape for each of the colors
%multiplied by each of their respective prices
sub = Gold.*4.99 + White .*2.99 + Blue.*3.99;
%add the tax and round the the nearest hunderedth
cost = round(1.08.*sub,2);
end