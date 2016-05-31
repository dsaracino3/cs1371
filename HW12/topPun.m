function topPun (name, scores)
days = 0:1:length(scores);
scores = [0 scores];
scores = cumsum(scores);
plot(days, scores, 'ro-');
tile = [name '''s Total Score'];
title(tile);
xlabel('Day');
ylabel('Score');
end