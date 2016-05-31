function out = meanEvenOrOdd (vec, st)
if strcmp(st, 'odd')
    vec = vec(mod(vec,2) == 1);
    out = mean(vec);
elseif strcmp(st, 'even')
    vec = vec(mod(vec,2) == 0);
    out = mean(vec);
end
end