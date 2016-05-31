function str = gradeSorter (grades, first, last)
%function to help out teacher with sorting grades
[grades, bIndex] = sort(grades);
%use the second output of the grades function to get the oringinal indecies
%of the newly created vecotr in which everything is sorted
aIndex = fliplr(bIndex);
%use some random fucntion to flip the vector from l to r by columns
str = zeros(1, (3.*length(grades) -1));
%create a new vector filled with zeros that has enough length for the all
%the initials and spaces
str(1:3:end) = first(aIndex);
%put the first intials starting with the first and leaving space
str(2:3:end) = last(aIndex);
%for the last intial
str(3:3:end) = 32;
%and the space
str = char(str);
%change class to char so letters
end