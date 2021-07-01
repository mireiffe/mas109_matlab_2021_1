% Set A.
A = [3 2 1 3 5; 6 4 3 5 7; 9 6 5 7 9; 3 2 0 4 8]; 

% Find a basis for the null space of A.
nullA = null(A,'r'); 
% null(A,'r') returns a matrix 
% whose columns are a basis for the null space of A.

[m, n] = size(nullA);
% Since the number of columns of nullA is n,
% thus, n = the number of basis vectors of the null space of A.

disp('The nullity of A is'); disp(n);