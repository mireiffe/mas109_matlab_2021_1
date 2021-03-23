A = [3 3 0 5; 2 2 0 -2; 4 1 -3 0; 2 10 3 2];

% (a). Multiply the second row of A by 2 and call it A2.
% Initialize the matrix A2 as A.
A2 = A; 
% Multiply the second row of A by 2.
A2(2,:) = 2*A(2,:);
disp('The determinant of A2 is'); disp(det(A2));
disp('2*det(A) = '); disp(2*det(A));

% (b). Interchange the rows 2 and 4 of A and call it A24.
% Initialize the matrix A24 as A.
A24 = A; 
% Interchange the rows 2 and 4 of A.
A24(2, :) = A(4, :) ; A24(4, :) = A(2, :);
disp('The determinant of A24 is'); disp(det(A24));
disp('-det(A) = '); disp(-det(A));

% (c). Add 2 times row 3 to row 4 of A and call it A234.
% Initialize the matrix A234 as A.
A234 = A; 
% Add 2 times row 3 of A to row 4.
A234(4, :) = 2 * A(3, :) + A(4, :); 
disp('The determinant of A234 is'); disp(det(A234));
disp('det(A) = '); disp(det(A));