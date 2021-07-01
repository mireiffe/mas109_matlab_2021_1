v1 = [1 2 4 -6 11 23 -14 0 2 2]';
v2 = [3 1 -1 7 9 13 -12 8 6 -30]';
v3 = [5 5 7 -5 31 59 -40 8 10 -26]';
v4 = [5 0 -6 20 7 3 -10 16 10 -62]';

% Construct A whose column space is W=span(v1,v2,v3,v4).
A = [v1 v2 v3 v4];

% Find the reduced row echelon form R of A and the pivot columns of A.
[R, pivotcols] = rref(A);

format short;

disp('The pivot columns of the reduced row echelon form of A are');
disp(pivotcols);

% From the result, the leading 1's in R occur in columns 1 and 2.
% (i.e., the pivot columns of A are 1 and 2.)
% Hence, the basis vectors for W are v1 and v2.

disp('The reduced row echelon form R of A is'); disp(R);

% Furthermore, from the reduced row echelon form R of A,
% we can see that v3 = 2*v1 + v2, and v4 = -v1 + 2*v2.