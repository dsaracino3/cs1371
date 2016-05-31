function [team, mar, half, full, blank] = worldSeries (arr, teams)
t1score = arr(1,:);
t2score = arr(2,:);
t1name = teams(1);
t2name = teams(2);
if sum(t1score) > sum(t2score)
    team = t1name;
    mar = sum(t1score) - sum(t2score);
else
    team = t2name;
    mar = sum(t2score) - sum(t1score);
end
half = max([max(t1score), max(t2score)]);
full = max(t1score + t2score);
blank = length(find(arr == 0));
end