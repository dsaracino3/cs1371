function [avg, bad] = deflateGate (q1, q2, q3, q4)
%find average vector
avg = (q1 + q2 + q3 + q4)./4;
%create masks for the consecutive quarters
q12mask = q1 == q2;
q23mask = q2 == q3;
q34mask = q3 == q4;
%create an array that combines all the masks
bad = q12mask | q23mask | q34mask;
%output the average without all the cheating positions using the mask
avg(bad) = 0;
end