function out = rhymeThyme (in)
%strtok to separate the input into the two phrases we are trying to check
%for rhymes
[in1, rest] = strtok(in, '.');
[in2, rest] = strtok(rest, '.');
%this is just to get rid of the space at the beginning of the second phrase
in2 = in2(2:end);
%the conditions for rhymes also want us to make sure the phrases are the
%same length, so I used one of the 'is' functions, in this case isspace to
%check the number of spaces and then add one to find the number of words.
wordsOne = sum(isspace(in1)) + 1;
wordsTwo = sum(isspace(in2)) + 1;
%I also make variable for the last three letters of the string which is the
%part that we are suppose to check is rhyming
one = in1(length(in1)-2:length(in1));
two = in2(length(in2)-2:length(in2));
%here is the & operator with a string comparison of the last three letters
%and an == of the number of words of the two phrases
out = strcmp(one, two) & wordsOne == wordsTwo;
end