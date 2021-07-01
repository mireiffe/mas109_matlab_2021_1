% Construct b as a column vector.
b = [-21 -60 -3 108 84]';
% Set v1, v2, v3 as column vectors. 
v1 = [1 -1 3 11 20]'; 
v2 = [10 5 15 20 11]'; 
v3 = [3 3 4 4 9]';
% Set a matrix A with column vectors v1, v2 and v3. 
A = [v1 v2 v3]; 
% Augmented matrix [A | b].
augA = [A b]; 
% Reduced row echelon form of augA.
rref_augA = rref(augA);
% Solution vector from rref_augA. 
x = rref_augA(1:3, 4); 

% Display the result as an integer form.
format rat; 
disp('b is a linear combination of x(1)*v1+x(2)*v2+x(3)*v3, where');
disp('x(1) ='); disp(x(1)); disp('x(2) ='); disp(x(2));
disp('x(3) ='); disp(x(3));