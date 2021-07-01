% Solve the linear system Ax=b 
% by using the LU-decomposition obtained in (a).

% First, let us solve L*y = b by forward substitution.
% Set the right-hand-side vector b.
b = [0 -2 1]';

% Initialization of the solution vector y.
y = zeros(3, 1);
y(1) = b(1) / L(1, 1);
y(2) = (b(2) - (L(2, 1)*y(1))) / L(2, 2);
y(3) = (b(3) - (L(3, 1)*y(1)) - (L(3, 2)*y(2))) / L(3, 3);

% Next, let us solve U*x = y by backward substitution.
x = zeros(3, 1); % Initialization of the solution vector x.
x(3) = y(3) / U(3, 3);
x(2) = (y(2) - (U(2, 3)*x(3))) / U(2, 2);
x(1) = (y(1) - (U(1, 3)*x(3)) - (U(1, 2)*x(2))) / U(1, 1);

disp('The solution to Ax=b by the LU-decomposition is'); disp(x');