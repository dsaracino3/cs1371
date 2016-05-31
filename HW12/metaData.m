function metaData (fn)
[num txt raw] = xlsread(fn);
[x y] = size(num);
y = y -1;
z = ceil(y./2);
for i = 1:y
    subplot(2, z, i)
    plot(num(:,1), num(:,i+1), 'k.-');
    xlabel(raw(1,1));
    ylabel(raw(1,i+1));
end
end