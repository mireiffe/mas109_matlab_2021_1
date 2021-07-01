hx = 0.01;   hy = 0.05; % Set the increment as described in the problem.

x = -1:hx:1;            % A vector x of a specified interval and increment.
y = -1:hy:1;            % A vector y of a specified interval and increment.

% Construct a grid over the domain D in the problem.
[X, Y] = meshgrid(x, y);

theta = 17 * pi / 180;  % Set the theta as appropriate radian value.
C = cos(theta);         % Store the value of cos(theta)
S = sin(theta);         % Store the value of sin(theta)

% Construct clockwise rotated grids, rotX and rotY.
rotX = C.*X - -S.*Y;
rotY = -S.*X + C.*Y;

% Evaluate the function g(x,y) discribed in the problem.
gxy = exp(-rotX.^2-rotY).*sin(2*rotX.^4) + 3*cos(rotX.*rotY);

figure(1);              % Open the figure 1.
mesh(X, Y, gxy);        % Draw the surface.
grid on;                % Turn the grid on.