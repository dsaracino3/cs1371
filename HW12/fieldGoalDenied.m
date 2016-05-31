function log = fieldGoalDenied (arr, vec)
vel = arr(1,:);
tim = arr(2,:);
subplot(1,3,1);
plot(tim, vel, 'k-');
xlabel('Time');
ylabel('Velocity');
acc = diff(vel)./diff(tim);
subplot(1,3,2);
plot(tim(2:end), acc, 'b-')
xlabel('Time');
ylabel('Acceleration');
subplot(1,3,3);
hold on
pos = cumtrapz(tim, vel);
plot(tim, pos, 'm-')
t = vec(2);
pospol = polyfit(tim, pos, 7);
posval = polyval(pospol, t);
plot(t, vec(1), 'g+');
plot(t, posval, 'ro');
xlabel('Time');
ylabel('Position');
if vec(1) >= posval
    log = true;
else
    log = false;
end
end