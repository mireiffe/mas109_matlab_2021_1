% Find the coordinate vector of x with respect to the basis B1.
x = [3 7 -4 5 1]';  x_B1 = B1\x;
disp('The coordinate vector of x with respect to the basis B is');
disp(x_B1');

% Find the coordinate vector of T(x) with respect to the basis B2.
Tx_B2 = TB1B2 * x_B1;
disp('The coordinate vector of T(x) with respect to the basis B'' is');
disp(Tx_B2');