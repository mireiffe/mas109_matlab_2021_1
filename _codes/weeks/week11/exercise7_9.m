v1 = [1 2 3 -4]'; v2 = [2 3 -4 1]'; v3 = [2 -5 8 -3]';
v4 = [5 26 -9 -12]'; v5 = [3 -4 1 2]';

% Set A that has v1,v2,v3,v4 and v5, as column vectors.
A = [v1 v2 v3 v4 v5]; 

% Find the reduced row echelon form R of A and the pivot columns of A.
[R, pivotcols] = rref(A);

% M is the matrix whose columns are a basis for the column space of A.
M = A(:, pivotcols);

% By (27) in section 7.7, find the standard matrix.
P = M * inv(M'* M) * M';

format short;
disp('The standard matrix for the orthogonal projection of R^4 onto W=col(A) is');
disp(P);

x = [1 0 -3 7]'; 
xproj = P*x; 
xperp = x - xproj;
disp('The projection of x onto W=col(A) is'); disp(xproj');

disp('The projection of x onto the orthogonal complement of W=col(A) is');
disp(xperp');

% As a check, the dot product of the two projections should be zero.
disp('The dot product of the two projections is'); disp(dot(xproj, xperp));