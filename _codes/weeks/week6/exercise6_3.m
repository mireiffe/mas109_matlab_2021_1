A = [-3/7 -2/7 -6/7; 6/7 -3/7 -2/7; -2/7 -6/7 3/7]; format short;

% Check that A*A' is the identity matrix.
disp('A*A^T = '); disp(A*A')

% Although the off diagonal entries are not exactly all zeros,
% the scaling factor suggests that roundoff error prevents
% the computed matrix from being the identity matrix.
% You can see that the product is exactly the identity matrix,
% when the symbolic computation is used.

% Check that det(A)=1 to conclude that A is orthogonal.
disp('det(A) = '); disp(det(A))

% Since A*A'=I and det(A) = 1, A represents a rotation.

% By (16) of Section 6.2,
% find the angle of rotation 
% and convert the angle from radians to degrees.
theta = acos((trace(A)-1)/2); ang = ((theta)*(180/pi));
disp('The angle of rotation in degrees is'); disp(ang);

% By (17) of Section 6.2, find the axis of rotation.
% The initial point at the origin.
e1 = [1 0 0]'; 

% v is along the axis of rotation.
v = (A+A'+((1-trace(A))*eye(3))) * e1; 
disp('The axis of rotation passes through the point'); disp(v');