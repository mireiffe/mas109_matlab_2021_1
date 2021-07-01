x = [0, 1, 2, 3, 4, 5, 6, 7]';
y = [3.9, 5.3, 7.2, 9.6, 12, 17, 23, 31]';

m = length(x);
t = linspace(min(x), max(x));
M = [x, ones(m,1)]; Y = log(y); % Set the least squares problem.
v = M \ Y;                      % Find the least squares solution.
a = exp(v(2)); b = v(1);        % Fitting constants a and b.
figure; hold on;
plot(x, y, 'ro');                   % Plot given data points.
% Plot the fitting curve with a and b.
plot(t, a*exp(b*t), 'color', [0 0.4470 0.7410]);
grid on;
title(sprintf('Exponential model (y=%.3f*exp(%.3f*x))', a, b))
a0=a;
b0=b;

dt = 0.00001;
while 1
    ei = y - a * exp(b * x);
    E = sum(ei.^2);
    gEi = [- 2 * ei .* exp(b * x), - 2 * a * ei .* x .* exp(b * x)];
    gE = sum(gEi);
    
    a = a - dt * gE(1);
    b = b - dt * gE(2);
    
    if sum(abs(gE)) < 1E-10
        break
    end
end

aa = 3.7:0.0001:4.0;
bb = 0.29:0.0001:.305;
[AA, BB] = meshgrid(aa, bb);
EE = zeros(size(AA));
for ii = 1:length(x)
    EE = EE + (y(ii) - AA .* exp(BB * x(ii))).^2; 
end
 
fig = figure; hold on;
contour(AA, BB, EE, [0.55, 0.58, 0.62, 0.7, 0.85, 1.2, 2, 3, [5:3:30]],...
    'ShowText','on'); 
% Plot the fitting curve with a and b.
plot(a, b, 'rd', 'MarkerSize', 7, 'MarkerFaceColor', 'r');
plot(a0, b0, 'bd', 'MarkerSize', 7,'MarkerFaceColor', 'b');
ax = get(gca, 'Children');
legend_str = {'', sprintf('The LSS : (%.3f, %.3f)', a, b), sprintf('Our solution : (%.3f, %.3f)', a0, b0)};
legend(ax(2:-1:1), legend_str(2:3));
grid on;

