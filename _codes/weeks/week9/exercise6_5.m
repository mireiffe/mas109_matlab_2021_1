% Angle as a degree.
ang1=30; ang2=60; ang3=45; 

% Convert angles from degrees to radians.
theta1=((ang1)*(pi/180)); 
theta2=((ang2)*(pi/180));
theta3=((ang3)*(pi/180)); 

format short;

% Rotation about z-axis with the angle 30.
Rz = [cos(theta1) -sin(theta1) 0; sin(theta1) cos(theta1) 0; 0 0 1];
% Rotation about x-axis with the angle 60.
Rx = [1 0 0; 0 cos(theta2) -sin(theta2); 0 sin(theta2) cos(theta2)];
% Rotation about y-axis with the angle 45.
Ry = [cos(theta3) 0 sin(theta3); 0 1 0; -sin(theta3) 0 cos(theta3)];

% Composition of the three rotation matrices R = Ry*Rx*Rz.
R = Ry*Rx*Rz; 

% Find the axis of rotation of R,
% by finding the eigenvector of R corresponding to the eigenvalue lambda=1.

% Find a nonzero vector satisfying Rx = x.
x = null(eye(3) - R); 

% Find the angle of rotation of R.
% Note that w=(-x2,x1,0) is orthogonal to the axis of rotation x=(x1,x2,x3).
w = [-x(2) x(1) 0]';
theta = acos((dot(w, R*w))/((norm(w)*norm(R*w))));

% Convert the angle from radians to degrees.
ang = ((theta)*(180/pi));

disp('The angle of rotation in degrees is'); disp(ang);
disp('The axis of rotation is'); disp(x');