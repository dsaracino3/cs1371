function vec = interweave (vec1, vec2)
%function to weave together two vectors by placing them in odd and even
%indecies 
vLength = max([length(vec1), length(vec2)]);
%declare the length of the vector to be double the greater of the two
vec = zeros(1,vLength.*2);
%put zeros in a new vecotr of that length we found earlier
vec(1:2:(length(vec1).*2)) = vec1;
%place the first input into the odd spots of our vector
vec(2:2:(length(vec2).*2)) = vec2;
%place the second vector into the even spots of our vector
end