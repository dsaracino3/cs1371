function [level, monsters, log] = cyberChase (st)
level = st.Level;
monsters = st.Monsters;
gang = st.Gang;
item = {st.Item};
snax = st.ScoobySnax;
next = st.Next;
while snax & level <= 10 & ~isempty(next)
    level = next.Level;
    monsters = monsters + next.Monsters;
    gang = [next.Gang];
    item = [item, {next.Item}];
    snax = next.ScoobySnax;
    next = next.Next;
end
log = false;
if any(strcmp(gang, 'Scooby')) & any(strcmp(gang, 'Cyber Scooby')) & any(strcmp(item, 'Magnet')) & level == 10
    log = true;
end
level = sprintf('You reached level: %d', level);
end