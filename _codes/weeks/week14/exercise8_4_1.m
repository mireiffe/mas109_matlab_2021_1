format rat;
A=hilb(4);

eig_val=eig(A);
if all(eig_val>0) && issymmetric(A)==1
    disp('Given matrix A is'); disp(A);
    disp('A is symmetric and positive definite matrix.');
    fprintf('eigen value of A is '); disp(eig_val');
end