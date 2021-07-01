%--- The following is the function file 'comp_Rot.m'. ---%
function [L, ang] = comp_Rot(ang1, ang2, ang3)

% Angle as a degree.
angle=[ang1 ang2 ang3];

% Convert angles from degrees to radians.
theta=angle*(pi/180); 

% Rotation about x-axis, y-axis, and z-axis.
Rx = [1 0 0; 
      0 cos(theta(1)) -sin(theta(1)); 
      0 sin(theta(1)) cos(theta(1))];
Ry = [cos(theta(2)) 0 sin(theta(2)); 
      0 1 0; 
      -sin(theta(2)) 0 cos(theta(2))];
Rz = [cos(theta(3)) -sin(theta(3)) 0; 
      sin(theta(3)) cos(theta(3)) 0; 
      0 0 1];

% Composition of the three rotation matrices R = Ry*Rx*Rz.
R = Rz*Ry*Rx; 

% Find the axis of rotation of R,
% by finding the eigenvector of R 
% corresponding to the eigenvalue lambda=1.

% Find a nonzero vector satisfying Rx = x.
L = null(eye(3) - R);

% Make the axis of rotation unit vector. 
L = L/norm(L);  

% Find the angle of rotation of R.
% Note that w=(-x2,x1,0) is 
% orthogonal to the axis of rotation x=(x1,x2,x3).
w = [-L(2) L(1) 0]';
rot_theta = acos((dot(w, R*w))/((norm(w)*norm(R*w))));
ang = ((rot_theta)*(180/pi));
end