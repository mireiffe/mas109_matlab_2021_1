% Construct the matrix A.
A=[2 -3 1 0; 1 1 2 2; 3 0 -1 4; 1 6 5 6];

% Find the eigenvalues and eigenvectors of A by using eig.
% This command gives AQ = QD.
[Q, D] = eig(A); 
lambda1 = D(1,1); lambda2 = D(2,2); 
lambda3 = D(3,3); lambda4 = D(4,4); 

% Extract each column vector as an eigenvector of A.
x1 = Q(:,1); x2 = Q(:,2); x3 = Q(:,3); x4 = Q(:,4);

% Display the result with long digits.
format long; 
disp('lambda1 is'); disp(lambda1);
disp('The eigenvector corresponding to lambda1 is'); disp(x1');
disp('lambda2 is'); disp(lambda2);
disp('The eigenvector corresponding to lambda2 is'); disp(x2');
disp('lambda3 is'); disp(lambda3);
disp('The eigenvector corresponding to lambda3 is'); disp(x3');
disp('lambda4 is'); disp(lambda4);
disp('The eigenvector corresponding to lambda4 is'); disp(x4');