function txt = jackBlack (name, rate, times)
[num text raw] = xlsread(times);
format = 'We''re going to see %s at %s. See you then :)';
%get averages and put in vector
avg = [];
    for j = 1:length(rate)
        avg = [avg mean(rate{j})];
    end
[avg ndx] = sort(avg, 'descend');
%define variables and get all the showtimes and timings and all that
name = name(ndx);
first = name(1);
second = name(2);
third = name(3);
ind1 = find(ismember(raw(1:end,1),first));
ind2 = find(ismember(raw(1:end,1),second));
ind3 = find(ismember(raw(1:end,1),third));
showtime1 = dub2tim(text(ind1,2));
showtime2 = dub2tim(text(ind2,2:end-1));
showtime3 = dub2tim(text(ind3,2:end-1));
show1end = showtime1 + raw{ind1, end};
close2 = showtime2 - show1end;
close3 = showtime3 - show1end;
[close2 ndx2] = sort(close2);
[close3 ndx3] = sort(close3);
ndx21 = find(close2 >= 0, 1);
ndx31 = find(close3 >= 0, 1);
close2 = close2(ndx21);
close3 = close3(ndx31);
%separate if 2nd or 3rd is closer to first
    if close2 < close3
        txt = sprintf(format, text{ind2,1}, text{ind2, 1 + ndx2(ndx21)});
    else
        txt = sprintf(format, text{ind3,1}, text{ind3, 1 + ndx3(ndx31)});
    end
end
%function to convert the time from military to only minutes
function time = dub2tim (times)
time = [];
    for i = 1:length(times)
        [hour, min] = strtok(times{i}, ':');
        min = min(2:end);
        hour = str2num(hour);
        min = str2num(min);
        time = [time (hour.*60 + min)];
    end
end