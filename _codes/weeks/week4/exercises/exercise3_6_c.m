fprintf('Using MATLAB command lu\n');
% LU decomposition of A with a permutation matrix.
[L, U, P] = lu(A);

disp('Lower triangular part L is'); disp(L);
disp('Upper triangular part U is'); disp(U);
disp('The permutation matrix P is'); disp(P);
disp('PA='); disp(P*A); disp('LU='); disp(L*U);