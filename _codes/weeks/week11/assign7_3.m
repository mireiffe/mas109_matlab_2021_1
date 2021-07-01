x = [2 3 4 5 6 7 8 9]';
y = [4.07 5.30 6.21 6.79 7.32 7.91 8.23 8.51]';

m = length(x);
t = linspace(min(x), max(x));
A = [ones(m,1) log(x)]; Y = y;	% Set the least squares problem.
v = A \ Y;                      % Find the least squares solution.
a = v(1); b = v(2);             % Fitting constants a and b.
figure; hold on;
plot(x, y, 'ro');               % Plot given data points.
% Plot the fitting curve with a and b.
plot(t, a + b*log(t), 'color', [0 0.4470 0.7410]);
grid on;
title(sprintf('Logarithmic model (y=%.3f+%.3f*ln(x))', a, b));