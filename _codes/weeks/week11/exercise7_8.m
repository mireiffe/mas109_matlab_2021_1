A = [1 3 2 1; -2 -6 0 -6; 3 9 1 8; -1 -3 -3 -6; 1 3 2 1; 4 12 1 11];

% Find the reduced row echelon form R of A and the pivot columns of A.
[R, pivotcols] = rref(A);

format short;

disp('The pivot columns of the reduced row echelon form of A are');
disp(pivotcols);
% From the result, the leading 1's in R occur in columns 1, 3, and 4.
% (i.e., the pivot columns of A are 1, 3, and 4.)
% Hence, the columns 1, 3, and 4 of A are a basis for the column space of A.

disp('The reduced row echelon form R of A is'); disp(R);
% Furthermore, from the reduced row echelon form R of A,
% we can see that v2 = 3*v1, where v1 = A(:, 1), and v2 = A(:, 2).