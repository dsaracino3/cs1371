function spheres = spherePacking (r, s)
%the volume of the cube that I am allowed to use for the sphere
usableVol = .74048.*s.^3;
%the volume of the sphere
vol = (4./3).*pi.*(r.^3);
%the number of spheres I can fit into the cube
spheres = floor(usableVol./vol);
end