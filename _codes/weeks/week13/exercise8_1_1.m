v1 = [1 1 0 0 0]'; v2 = [0 1 1 0 0]'; v3 = [0 0 1 1 0]';
v4 = [0 0 0 1 1]'; v5 = [1 0 0 0 1]';
nv1 = [1 2 -1]'; nv2 = [2 1 3]'; nv3 = [1 1 1]';

T = [7 12 -5 0 0; 3 10 0 13 1; -9 0 -1 0 -3];
B1 = [v1 v2 v3 v4 v5]; B2 = [nv1 nv2 nv3];
format short;

% Find the matrix representation with respect to the bases B1 and B2.
TB = T*B1;
TB1B2 = B2\TB;

disp('The matrix representation of T with respect to the basis B1 and B2 is');
disp(TB1B2);