format short;
n=10;   % Set the size of the large check board

% Construct your checkboard
CheckBoard=zeros(n);    
CheckBoard(1:2:n, 1:2:n)=1;
CheckBoard(2:2:n, 2:2:n)=1;
for i=1:n
       Cn=CheckBoard(1:i, 1:i);
       [Qn, Dn]=eig(Cn);    % Eigenvectors and eigenvalues
       fprintf('The size of the checkboard is %d \n',i);
       disp(diag(Dn)');
       endr