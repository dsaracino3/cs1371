function [sf, traveled] = mostWanted (st, allowed)
dist = {};
score = [];
name = {};
lastDist = 0;
ptraveled = 0;
for i = 1:length(st)
    dist = [dist, st(i).Location];
    score = [score, st(i).Points];
    name = [name, st(i).Name];
end
traveled = 0;
dist(strcmp(dist, 'NE')) = {200};
dist(strcmp(dist, 'SE')) = {300};
dist(strcmp(dist, 'MW')) = {500};
dist(strcmp(dist, 'NW')) = {600};
dist(strcmp(dist, 'W')) = {700};
[score, ndx]  = sort(score, 'descend');
for i = 1:length(st)
    if ptraveled <= allowed
        if length(score) > 1
            if dist{ndx(1)} == lastDist
                targetInd = ndx(1);
                ptraveled = traveled + 50;
                score(1) = [];
                ndx(1) = [];
                ind = 0;
            elseif dist{ndx(2)} == lastDist
                targetInd = ndx(2);
                ptraveled = traveled + 50;
                score(2) = [];
                ndx(2) = [];
                ind = 0;
            else
                pTargetDist = [dist{ndx(1)} dist{ndx(2)}];
                [TargetDist ind] = min(pTargetDist);
            end
            if ind == 1
                targetInd = ndx(1);
                ptraveled = traveled + dist{targetInd};
                score(1) = [];
                ndx(1) = [];
            elseif ind ==2
                targetInd = ndx(2);
                ptraveled = traveled + dist{targetInd};
                score(2) = [];
                ndx(2) = [];
            end
        elseif length(score) == 1
            targetInd = ndx(1);
            if dist{targetInd} == lastDist
                ptraveled = traveled + 50;
                score(2) = [];
                ndx(1) = [];
                ind = 0;
            else
                ptraveled = traveled + dist{targetInd};
                score(1) = [];
                ndx(1) = [];
                ind = 0;
            end
        end
        lastDist = dist{targetInd};
        if ptraveled <= allowed
            traveled = ptraveled;
            sf(i).Name = st(targetInd).Name;
            sf(i).Location = st(targetInd).Location;
            sf(i).Points = st(targetInd).Points;
        end
        lastDist = dist{targetInd};
    end
end
end