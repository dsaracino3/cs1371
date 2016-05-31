function newVec = vecResize (vec, scalingFactor)
%i can't lie, i saw the recitation quiz and the code was there
%i'll explain so i feel a little better, but I already saw the code before
%i completed the homework
index = linspace(1,length(vec),length(vec).*scalingFactor);
%so we use the linspace function to create a vector of the length of the
%original vector multiplied by the scaling factor with endpoints the same
%as the original vector
newVec = vec(round(index));
%since we are creating a vecotr of different length, but same endpoints,
%they will have different spacing so we need to round the elements to make
%sure they are still whole numbers
end