x = [2, 3, 4, 5, 6, 7, 8, 9]';
y = [1.75, 1.91, 2.03, 2.13, 2.22, 2.30, 2.37, 2.43]';

m = length(x);
t = linspace(min(x), max(x));
M = [x, ones(m,1)]; 
Y = y;                     % Set the least squares problem.
v = M \ Y;                  % Find the least squares solution.
a = v(1); b = v(2);         % Fitting constants a and b.
figure; hold on;
plot(x, y, 'ro');         % Plot given data points.    
% Plot the fitting curve with a and b.
plot(t, a*t+b, 'color', [0 0.4470 0.7410]);
grid on;
title(sprintf('Linear model (y=%.3fx+%.3f)', a, b));