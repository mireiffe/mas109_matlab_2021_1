% Since the eigenvalue = 2 of A has the multiplicity = 2, 
% find two linearly independent eigenvectors of A corresponding to lambda = 2.

%Find a basis for the null space of (2*I-A).
eigvec12=null((2 * eye(n)) - A);

% Since the eigenvalue = 7 of A has the multiplicity = 1, 
% find an eigenvector of A corresponding to lambda = 7.

%Find a basis for the null space of (7*I-A).
eigvec3=null((7 * eye(n)) - A);

p1 = eigvec12(:, 1); p2 = eigvec12(:, 2); p3 = eigvec3(:, 1); 

% By the Theorem 8.2.7, since the eigenvectors corresponding to 
% distinct eigenvalues are linearly independent,
% the three obtained eigenvectors {p1, p2, p3} form a basis for R^{3}.

disp('A basis {p1, p2, p3} for R^{3} consisting of the eigenvectors of A is');
fprintf('p1 ='); disp(p1'); 
fprintf('p2 ='); disp(p2'); 
fprintf('p3 ='); disp(p3');