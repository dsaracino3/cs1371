function str = criticalFailure (vec)
%so no critical error?
if vec(1) ~= 1
    str = 'Good Job!';
%the other options are all where the above is false, so elseif
elseif vec(2) >= 1 & vec(2) <= 5
    str = 'Right Leg Wounded';
elseif vec(2) >= 6 & vec(2) <= 10
    str = 'Left Leg Wounded';
elseif  vec(2) >= 11 & vec(2) <= 15
    str = 'Right Arm Wounded';
elseif vec(2) >= 16 & vec(2) <= 20
    str = 'Left Arm Wounded';
end
end
