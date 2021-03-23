syms a b c d;

A=[a b c d; -b a d -c; -c -d a b; -d c -b a];

disp('Given matrix is'); disp(A);
disp('Determinant of the given matrix is'); 
disp(simplify(det(A)));