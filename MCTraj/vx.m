

function vout = vx(vi,EF,dt)
% This function finds the velocity of an electron influenced by a field.
%   Detailed explanation goes here
q = 1.60217653e-19;
me = 9.10938215e-31;
vout = vi + (q*(EF)*dt)/me;

end

