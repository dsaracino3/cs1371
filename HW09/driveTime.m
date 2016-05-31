function out = driveTime (in)
[num, txt, raw] = xlsread(in);
%set variables; first sort the numbers, then define the vehic_id's
num = sortrows(num);
vid = num(:,2);
vid = unique(vid);
time = [];
%for loop to cycle through the id's
    for i = 1:length(vid)
        %find the first and last values and find time interval
        ndx = find(num(:,2) == vid(i));
        if length(ndx) == 1
            time = [time; 0];
        else
            time = [time; round(num(ndx(end),1) - num(ndx(1),1), 1)];
        end
    end
out = sortrows([vid, time]);
end