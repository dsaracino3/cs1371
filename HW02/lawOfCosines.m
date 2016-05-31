function c = lawOfCosines (a, b, angle)
%find the other side
c = sqrt(a.^2 + b.^2 - 2.*a.*b.*cosd(angle));
end