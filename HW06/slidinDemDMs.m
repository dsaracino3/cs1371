function str = slidinDemDMs (str)
%increase the value of points based on the length of the strfinds
points = 0;
points = points + 5.*length(strfind(str, ':)'));
points = points + 5.*length(strfind(str, '(:'));
points = points + 10.*length(strfind(str, ';)'));
points = points + 10.*length(strfind(str, '(;'));
points = points + 15.*length(strfind(str, '<3'));
points = points + 2.*length(strfind(str, '!'));
points = points + 5.*length(strfind(str, 'bae'));
points = points + 2.*length(strfind(str, 'Heyy'));

y = strtok(str(strfind(str, 'Heyy'):end), ' ,.;:!?');
if length(y) > 4
    points = points + (length(strfind(y, 'y')).*2 - 4);
end

%separate out the outputs based on the number of points
if points >= 0 & points <= 14
    str = 'You are looking for love in all the wrong places.';
elseif points >= 15 & points <= 29
    str = 'Like a ball at the top of a hill, you have potential.';
elseif points >= 30
    str = 'Are you a bank? Because you have acquired interest!';
end
end