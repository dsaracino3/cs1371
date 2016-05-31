function z = multiVar (x, y)
%function to display the power of vectors in matlab
z = (x.*y - sqrt(x)./y)./(3.*x + y);
%matlab has no problem working with vectors and evaluating all the
%idividual elements when using the dot operator
end