A=[1 1 1; 1 0 2; 0 1 2];
[Q1, R1]=myQR(A); [Q, R]=qr(A);

disp('my QR result'); disp('Q');disp(Q1); disp('R');disp(R1);
disp('MATLAB QR result'); disp('Q');disp(Q); disp('R');disp(R);