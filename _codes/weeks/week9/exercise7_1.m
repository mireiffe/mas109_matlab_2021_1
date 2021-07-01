v1 = [2 6 3 4 2]'; v2 = [3 1 5 8 3]'; v3 = [5 1 2 6 7]';
v4 = [8 4 3 2 6]'; v5 = [5 5 6 3 4]';

% Construct V of the column vectors v1,v2,v3,v4 and v5.
V = [v1 v2 v3 v4 v5]; 

format short;

% Find the reduced row echelon form of V.
rref_V = rref(V); 

disp('The reduced row echelon form of A is'); disp(rref_V);