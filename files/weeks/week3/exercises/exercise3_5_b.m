% Construct the matrix A.
A=[0 1/4 1/8; 1/4 1/8 1/10; 1/8 1/10 1/10]; 

% Check that the condition in Theorem 3.6.7 
% of the text book is satisfied for matrix A.
column_sum=sum(abs(A),1);   % column-wise sum 
row_sum=sum(abs(A),2);  % row-wise sum
disp('The sum of the absolute values of the entries in each column is');
disp(column_sum);
disp('The sum of the absolute values of the entries in each row is');
disp(row_sum);

result3=eye(size(A))+A+A^2+A^3+A^4+A^5+A^6+A^7+A^8+A^9+A^10;
result4=inv(eye(3)-A);

format long;    % Display the result with long digits
disp('With format long');
disp('Approximated inv(I-A) is'); disp(result3);
disp('Exact inv(I-A) is'); disp(result4);