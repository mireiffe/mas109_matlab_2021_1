% Construct the 10x10 Fibonacci matrix F.
N=10; nOnes=ones(N, 1);
F=diag(nOnes)+diag(nOnes(1:N-1),1)-diag(nOnes(1:N-1),-1);

for n=1:7 % n is from 1 to 7
    Fn=F(1:n,1:n); % nxn Fibonacci matrix is selected from F.
    disp(det(Fn));
end