% Construct the matrix A.
A=[2 -3 1 0 4; 1 1 2 2 0; 3 0 -1 4 5; 1 6 5 6 -4]; 

% Display the format of each entry as a rational form
format rat; 

% Find the reduced row echelon form 
% and the pivot columns of the matrix A.
[rref_A, pivotcols] = rref(A);

% Find the rank of the matrix A.
rank_A = rank(A); 

disp('The reduced row echelon form is'); disp(rref_A);
disp('The pivot columns are'); disp(pivotcols);
disp('The number of the leading 1 is'); disp(rank_A);