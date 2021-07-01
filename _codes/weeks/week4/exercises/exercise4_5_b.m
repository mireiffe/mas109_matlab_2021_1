[L, U, P] = lu(A); % We have a PLU-decomposition of A. (i.e., PA=LU ).

% Since the determinant of a triangular matrix is
% just a product of diagonal entries,

det_L = prod(diag(L)); % The product of diagonal entries of L.
% Or, you may use the command det for L, directly. (i.e., det_L = det(L)).

det_U = prod(diag(U)); % The product of diagonal entries of U.
% Or, you may use the command det for U, directly. (i.e., det_U = det(U)).

% If you observe the permutation matrix P, you can see that
% P is an odd permutation. Thus, we have det(P) = -1.
det_P = -1;
% Or, you may use the command det for P, directly. (i.e., det_P = det(P)).

% Since PA = LU, det(P)*det(A) = det(L)*det(U).
det_A = det_P * det_L * det_U;

disp('The determinant of A by using the LU-decomposition is'); disp(det_A);