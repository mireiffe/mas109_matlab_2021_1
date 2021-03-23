% Construct the matrix A.
A=[6 -2 0; 9 -1 1; 3 7 5]; 

% LU decomposition of A.
[L, U, P]=lu(A); 
disp('[L U P]=lu(A)');
disp('L'); disp(L); disp('U'); disp(U); disp('P'); disp(P);