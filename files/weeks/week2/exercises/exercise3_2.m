% Construct the matrix A and the right-hand-side vector b.
A = [3 3 -4 -3; 0 6 1 1; 5 4 2 1; 2 3 3 2]; 
b = [-2 3 5 1]'; 

% (a)
% Use the command inv.
Inv_A1 = inv(A); 

% Use the syntax A^(-1).
Inv_A2 = A^(-1); 

% (b)
format rat; 
disp('The result of the command inv is'); disp(Inv_A1);
disp('The result of the syntax A^(-1) is'); disp(Inv_A2);

% (c)
% Since A is invertible, the solution to Ax=b is x=A^(-1)*b.
x = Inv_A1 * b;
disp('The solution to Ax=b is x = A^(-1)*b'); disp(x');