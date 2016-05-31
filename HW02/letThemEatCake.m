function me = letThemEatCake (total, people)
%first serving that each person has including me
first = floor(total./people);
%second servinc which is all of the leftovers
second = mod(total,people);
%all of the cake i get, YAY
me = first + second;
end