A=[1/2 0 3/2 0; 0 1/2 0 3/2; 3/2 0 1/2 0; 0 3/2 0 1/2];

% V: eigen vector, D: eigen value
[V, D]=eig(A);

% Gram-Schmidt process
P=GramSchmidt(V);
disp('P is'); disp(P);
disp('D is'); disp(D);
disp('P_transpose is'); disp(P');
disp('P*D*P_transpose is'); disp(P*D*P');
disp('A is'); disp(A);