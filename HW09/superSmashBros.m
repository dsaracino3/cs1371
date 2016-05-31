function [str, ca] = superSmashBros (char, scores)
[numc textc rawc] = xlsread(char);
[nums texts raws] = xlsread(scores);
wraws = raws;
[x y] = size(rawc);
%size of vector and random other vars
format1 = '%s won the most games, but %s is the best player!';
format2 = '%s won the most games and is the best player!';
wins = {'Winner'};
%for to go through and find who win each game
    for i = 2:x
        [gwin ndxg] = max([raws{i, 2:end}]);
        wins = [wins; raws{1, ndxg + 1}];
    end
ca = [raws wins];

%code to find out who won the most games
[unique_names, ~, names_map]=unique(wins);
mostgames = unique_names{mode(names_map)};

%code to find who needs weights
w8 = strcmp('Link', rawc) | strcmp('Samus', rawc) | strcmp('Luigi', rawc);
w4 = strcmp('DK', rawc) | strcmp('Yoshi', rawc) | strcmp('Mario', rawc);
w2 = strcmp('Jigglypuff', rawc) | strcmp('C. Falcon', rawc) | strcmp('Fox', rawc);
w0 = strcmp('Ness', rawc) | strcmp('Kirby', rawc) | strcmp('Pikachu', rawc);
%code to add to nums 
nums(w8(2:end, 2:end)) = nums(w8(2:end, 2:end)) + 8;
nums(w4(2:end, 2:end)) = nums(w4(2:end, 2:end)) + 4;
nums(w2(2:end, 2:end)) = nums(w2(2:end, 2:end)) + 2;
nums(w0(2:end, 2:end)) = nums(w0(2:end, 2:end));
%code to put in wraws
    for k = 2:x
        for l = 2:y
            wraws{k,l} = nums(k-1,l-1);
        end
    end
%same as above
wwins = {'Winner'};
    for j = 2:x
        [wwin wdxg] = max([wraws{j, 2:end}]);
        wwins = [wwins; wraws{1, wdxg + 1}];
    end
ca1 = [wraws wwins];
scores = [];
    for m = 1:y-1
        scores =[scores, sum(nums(:, m))];
    end
%max of all the scores    
[ma pos] = max(scores);
wgames = wraws{1,pos+1};

    if strcmp(mostgames, wgames)
        str = sprintf(format2, mostgames);
    else
        str = sprintf(format1, mostgames, wgames);
    end
end