% Construct the matrix A.
A = [1 2 -3 0; 1 1 -2 1; 2 1 3 4; -3 2 2 -8]; 

% (a)
result_a = A^5 + (-3)*A^3 + 7*A + (-4)*eye(4);

% Display the matrix polynomial.
disp('The result of the matrix polynomial is');
disp(result_a) 

% (b)
% Coefficient of the matrix polynomial.
coeff_poly = [1 0 -3 0 7 -4]; 

% Evaluate the matrix polynomial of coefficient
% with coeff_poly vector with the input matrix A.
result_b = polyvalm(coeff_poly, A);

% Display the matrix polynomial.
disp('The result of the matrix polynomial is');
disp(result_b);

% (c)
disp('The result of A.^2 is'); disp(A.^2);
disp('The result of A.^3 is'); disp(A.^3);
disp('The result of A.^4 is'); disp(A.^4);