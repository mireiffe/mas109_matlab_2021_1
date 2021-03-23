format rat;
% Construct the 10x10 matrix A satisfying given conditions.
n=10; nOnes=ones(n, 1);
A=2*diag(nOnes)+diag(nOnes(1:n-1),1)+diag(nOnes(1:n-1),-1);

for i=1:10 % i is from 1 to 10
    Ai=A(1:i,1:i); % A_i matrix is selected from A.
    disp(det(Ai));
end