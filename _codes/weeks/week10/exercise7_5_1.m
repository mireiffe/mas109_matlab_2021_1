% Set A.
A = [3 2 1 3 5; 6 4 3 5 7; 9 6 5 7 9; 3 2 0 4 8]; 

% Find the rank of A by using the command rank.
rank_A = rank(A); 

% Size of the matrix A.
[m, n] = size(A); 
% m = the number of rows of A, n = the number of columns of A.

% By (2) in section 7.4, rankA + nullA = n.
null_A = n - rank_A;

disp('The nullity of A is'); disp(null_A);