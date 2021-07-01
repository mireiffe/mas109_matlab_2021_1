% LU-factorization of A without row interchanges
[L, U] = ludecomp(A);

% From an LU-factorization of A, we can find the LDU-factorization of A,
% by appropriate normalization of L.
D = diag(diag(L));

for i = 1:4
    L(:, i) = L(:, i)./L(i, i);
end

disp('The LDU-factorization of A is');
disp('L = '); disp(L); disp('D = '); disp(D); disp('U = '); disp(U);