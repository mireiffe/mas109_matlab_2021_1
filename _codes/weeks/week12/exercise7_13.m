A = [2 -1 3 5; 4 -3 1 3; 3 -2 3 4; 4 -1 15 17; 7 -6 -7 0];
format short;

% Find the reduced row echelon form of A.
rref_A = rref(A);

% (1). Find an orthonormal basis for the row space of A.
% From the result of rref_A, the first three nonzero rows in rref_A form
% a basis for the row space of A.

% Construct a matrix R_A whose columns are a basis for the row space of A.
R_A = rref_A(1:3, :)';

% Find an orthonormal basis for the column space of R_A by Gram-Schmidt process,
% which is the same as finding an orthonormal basis for the row space of A.
Orth_R_A = GramSchmidt(R_A);

a1 = Orth_R_A(:, 1); a2 = Orth_R_A(:, 2); a3 = Orth_R_A(:, 3);

disp('An orthonormal basis {a1, a2, a3} for the row space of A is');
disp('a1 = '); disp(a1'); disp('a2 = '); disp(a2'); disp('a3 = '); disp(a3');

% (2). Find an orthonormal basis for the column space of A.
% From the result of rref_A, the first three columns of A are the pivot columns
% which form a basis for the column space of A.

% Construct a matrix C_A whose columns are a basis for the column space of A.
C_A = A(:, 1:3);

% Find an orthonormal basis for the column space of C_A by Gram-Schmidt process,
% which is the same as finding an orthonormal basis for the column space of A.
Orth_C_A = GramSchmidt(C_A);

b1 = Orth_C_A(:, 1); b2 = Orth_C_A(:, 2); b3 = Orth_C_A(:, 3);

disp('An orthonormal basis {b1, b2, b3} for the column space of A is');
disp('b1 = '); disp(b1'); disp('b2 = '); disp(b2'); disp('b3 = '); disp(b3');


% (3). Find an orthonormal basis for the null space of A.
% In addition, from the result of rref_A,
% we can easily see that {[-6 -7 0 1]'} is a basis for N(A).

% Construct a matrix N_A whose columns are a basis for the null space of A.
N_A = [-6 -7 0 1]';

% Find an orthonormal basis for the column space of N_A by Gram-Schmidt process,
% which is the same as finding an orthonormal basis for the null space of A.
Orth_N_A = GramSchmidt(N_A);

c1 = Orth_N_A(:, 1);
disp('An orthonormal basis {c1} for the null space of A is');
disp('c1 = '); disp(c1');

% (4). Find an orthonormal basis for the null space of A transpose.
[L, U, P] = lu(A);
temp = [0 0 0 0 1]';
% Make L a square matrix of order 5.
L = [L temp];

% Make U have the same size of A.
U(5, :) = 0;

% Then, we have P*A = L*U, which is the same result as above.
% Note that L^(-1)*P*A = U, where U is an upper triangular matrix.

E = L^(-1)*P;

% Since E = L^(-1)*P is a product of elementary matrices s.t. E*A=U,
% E represents a set of elementary row operations
% that makes A become a row echelon form U.

% ref_par_A is the resulting partitioned matrix [U E].
ref_par_A = [U E];

% From the result of ref_par_A, we can see that ref_par_A([4:5], [1:4]) = 0.
% Thus, the row vectors of E2 form a basis for null(A'),
% where E2 = ref_par_A([4:5], [5:9]).

% Construct a matrix N_Atrans whose columns are a basis for
% the null space of A transpose.
N_Atrans = ref_par_A(4:5, 5:9)';

% Find an orthonormal basis for the column space of N_Atrans by Gram-Schmidt process,
% which is the same as finding an orthonormal basis for the null space of A transpose.
Orth_N_Atrans = GramSchmidt(N_Atrans);

d1 = Orth_N_Atrans(:, 1); d2 = Orth_N_Atrans(:, 2);
disp('An orthonormal basis {d1, d2} for the null space of the transpose of A is');
disp('d1 = '); disp(d1'); disp('d2 = '); disp(d2');