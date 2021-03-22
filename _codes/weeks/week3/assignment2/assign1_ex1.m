% assignment1_ex1

x = linspace ( -3 , 3 , 500) ; % Construct a vector x
p = x.^3 - x;       % Construct a vector p

figure;             % Make a new figure
subplot(2, 1, 1)    % make a 2 x 1 axis grid and choose 1st
plot(x, p);         % Draw the graph

subplot(2, 1, 2)    % choose 2nd axis
plot(x, p);         % Draw the graph
grid on