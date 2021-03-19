% (a)-i
A = [ 2 11 3 ; -2 -11 -3; 8 35 9];  % Construct the matrix A.
% Compute the A^2, A^3, ... , and display.
disp('A^2 is'); disp(A^2);
disp('A^3 is'); disp(A^3);

% (a)-ii Comparing two result

% By Theorem 3.6.6, (I-A)^(-1)=I+A+A^2.
result1=eye(3)+A+A^2;  

% Compute the inverse of (I-A) directly.
result2=inv(eye(3)-A);
disp('I+A+A^2 is'); disp(result1);
disp('(I-A)^(-1) is'); disp(result2);

% Display as a rational form.
format rat; 
disp('Rational form of (I-A)^(-1) is');disp(result2);