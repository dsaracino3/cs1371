function str = battleRoyal (name, strength, face)
%sort the strength values
%find the names of the three fighters
[name1 name2] = strtok(name, ',');
name2 = name2(2:end);
[name2 name3] = strtok(name2, ',');
name3 = name3(2:end);

faces = find(face);
if length(faces) == 2
    strength(~face) = strength(~face) -3;
elseif length(faces) == 1
    strength(face) = strength(face) - 3;
else
    strength = strength;
end

[strengths ind] = sort(strength);

%adjust the first name based on the order of the sort
if ind(1) == 2
    nameOne = name2;
elseif ind(1) == 3
    nameOne = name3;
else
    nameOne = name1;
end
%again, but for the third name
if ind(3) == 1
    nameThree = name1;
elseif ind(3) == 2
    nameThree = name2;
else
    nameThree = name3;
end 
%adjust the strength based on heels or faces

%produce output strings through various if statemetns
if strcmp(name1, 'John Cena') | strcmp(name2, 'John Cena') | strcmp(name3, 'John Cena')
    str = 'John Cena wins by absolute domination!!!';
elseif strengths(3) == strengths(2)
    str = sprintf('The underdog %s wins!', nameOne);
elseif strengths(3) - strengths(2) <= 2
    str = sprintf('%s just barely takes the victory!', nameThree);
elseif abs(strengths(3) - strengths(2)) <= 4
    str = sprintf('The champion is %s!', nameThree);
elseif abs(strengths(3) - strengths(2)) >= 5
    str = sprintf('%s wins by a landslide!', nameThree);
end
end