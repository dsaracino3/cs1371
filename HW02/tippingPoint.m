function [tb, ta] = tippingPoint (sub, tax, tip)
%the tip before tax
tb = round(tip./100.*sub, 2);
%tb = round((sub.*tip)./100,2);
%the tip after tax adjustment
ta = round(tip./100.*(sub + tax.*sub), 2);
%ta = round(((sub + (sub.*tax)).*tip)./100,2);
end