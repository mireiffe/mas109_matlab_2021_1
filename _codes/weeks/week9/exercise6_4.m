A = [3 -5 -2 2; -4 7 4 4; 4 -9 -3 7; 2 -6 -3 2];
format short;

% By (a) in Theorem 6.3.15, use the command rref of A.
rref(A)

% Since the reduced row echelon form of A is the identity matrix,
% the linear transformation T is onto.

% By (d) in Theorem 6.3.15, use the command null of A.

% Find a basis for the null space of A.
null(A, 'r') 

% Since the null space contains only the zero vector,
% the linear transformation T is onto.

% By (g) in Theorem 6.3.15, use the command rank of A.

% Find the number of linearly independent columns of A.
rank(A) 

% Since the column vectors of A are linearly independent,
% the linear transformation T is onto.

% By (i) in Theorem 6.3.15, use the command det of A.

% Find the determinant of A.
det(A) 

% Since det(A) is nonzero,
% the linear transformation T is onto.

% By (j) in Theorem 6.3.15, use the command eig of A.

% Find the eigenvalues A.
eig(A) 

% Since 0 is not an eigenvalue of A,
% the linear transformation T is onto.