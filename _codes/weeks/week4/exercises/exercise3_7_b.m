% Construct the some singular matrices.
A1=[1 0 0; -2 0 0; 4 6 1]; 
A2=[1 -2 7; -4 8 5; 2 -4 3];
A3=[1 0 0; -2 0 0; 4 6 1]; 

% LU decompositions of them.
[L1, U1, P1]=lu(A1); [L2, U2, P2]=lu(A2); [L3, U3, P3]=lu(A3); 
disp('[L1 U1 P1]=lu(A1)'); disp('L1');disp(L1);disp('U1');disp(U1);
disp('[L2 U2 P2]=lu(A2)'); disp('L2');disp(L2); disp('U2');disp(U2);
disp('[L3 U3 P3]=lu(A3)'); disp('L3');disp(L3); disp('U3');disp(U3);