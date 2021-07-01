% Construct v1, v2, v3, x, y
v1=[4 3 2 1]'; v2=[5 1 2 4]'; v3=[7 1 5 3]';
x=[16 5 9 8]'; y=[3 1 2 7]';

% Augmented matrices [v1|v2|v3|x] and [v1|v2|v3|y]
X=[v1 v2 v3 x];
Y=[v1 v2 v3 y];

disp('Reduced row echelon form of [v1 v2 v3 x] is');
disp(rref(X));
disp('Reduced row echelon form of [v1 v2 v3 y] is');
disp(rref(Y));