function str = rPS (p1, p2)
%separate out names and moves with strtok
[name1 move1] = strtok(p1, '-');
[name2 move2] = strtok(p2, '-');
move1 = move1(2:end);
move2 = move2(2:end);
%switch statement to classify each separate type of move into its category
switch move1
    case {'Sapphire', 'Ruby', 'Quartz', 'Limestone', 'Diamond'}
        moveone = 'rock';
    case {'Safety', 'Edge', 'Hair', 'Craft'}
        moveone = 'scissor';
    case {'Cardstock', 'Origami', 'Wrapping', 'Graphing'}
        moveone = 'paper';
end
switch move2
    case {'Sapphire', 'Ruby', 'Quartz', 'Limestone', 'Diamond'}
        movetwo = 'rock';
    case {'Safety', 'Edge', 'Hair', 'Craft'}
        movetwo = 'scissor';
    case {'Cardstock', 'Origami', 'Wrapping', 'Graphing'}
        movetwo = 'paper';
end
%hard coding of all 3 possibilities for each player and the one tie
if isequal(moveone, movetwo)
    str = 'Tie; try again.';
elseif strcmp('paper', moveone) & strcmp('rock', movetwo)
    str = sprintf('%s beats %s. %s wins.', move1, move2, name1);
elseif strcmp('rock', moveone) & strcmp('scissor', movetwo)
    str = sprintf('%s beats %s. %s wins.', move1, move2, name1);
elseif strcmp('scissor', moveone) & strcmp('paper', movetwo)
    str = sprintf('%s beats %s. %s wins.', move1, move2, name1);
elseif strcmp('paper', movetwo) & strcmp('rock', moveone)
    str = sprintf('%s beats %s. %s wins.', move2, move1, name2);
elseif strcmp('rock', movetwo) & strcmp('scissor', moveone)
    str = sprintf('%s beats %s. %s wins.', move2, move1, name2);
elseif strcmp('scissor', movetwo) & strcmp('paper', moveone)
    str = sprintf('%s beats %s. %s wins.', move2, move1, name2);
end
end