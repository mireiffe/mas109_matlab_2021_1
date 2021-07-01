% For the exact computation of the eigenvalues,
% we use symbolic computation.

% Set A as a symbolic matrix.
A = sym([-13 -60 -60; 10 42 40; -5 -20 -18]);

n = length(A);

% Find the eigenvalues of A by using the command eig.
eigenvalues = eig(A);

for j = 1 : n
    fprintf('The eigenvalue lambda is '); disp(eigenvalues(j));
    
    % nullity(lambda*I - A) = n - rank(lambda*I - A);
    nullity = n - rank((eigenvalues(j) * eye(n)) - A);
    
    fprintf('The nullity of (lambda*I - A) is '); disp(nullity);
end

% Since the geometric multiplicity of each eigenvalue of A
% is the same as the algebraic multiplicity,
% by the Theorem 8.2.11, A is diagonalizable.