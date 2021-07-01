% Symbolic variable lambda
syms lambda;

% Characteristic polynomial
char_poly=det(lambda*eye(size(A))-A);

% Expand the characteristic polynomial cf. simplify
polynomial=expand(char_poly);

% Coefficients extraction
coeff=coeffs(polynomial);

% According to the descending order of lambda degree
coefficient=coeff(end:-1:1);

% Compute the matrix polynomial
poly_A=polyvalm(double(coefficient), A);

disp('Coefficients of the matrix characteristic polynomial is');
disp(double(coefficient));
disp('Matrix characteristic polynomial is'); disp(poly_A);