% assignment1_ex2

figure; % Open a new figure window.

%% i. f(x) = |x -1| for -3 <= x <= 3.
subplot(2, 2, 1) ;      % Make a subplot in a figure window .
x = -3:0.01:3;          % Construct a linearly - spaced vector x.
plot(x, abs(x - 1)) ;   % Plot the function f(x)
                        % over the specified domain x.
axis tight;             % Axis limits to the range of the data .
title ('(1)');

%% ii. f(x) = sqrt (|x|) for -4 <= x <= 4.
subplot(2, 2, 2);
x = -4:0.01:4;
plot(x, sqrt(abs(x)));
axis tight;
title('(2)');

%% iii. f(x) = exp( -x^2) for -4 <= x <= 4.
subplot(2, 2, 3);
x = -4:0.01:4;
plot(x, exp(-x.^2));
axis tight;
title('(3)');

%% iv. f(x) = 1/(10* x^2 + 1) for -2 <= x <= 2.
subplot(2, 2, 4);
x = -2:0.01:2;
plot(x, 1./(10 * x.^2 + 1));
axis tight;
title('(4)');