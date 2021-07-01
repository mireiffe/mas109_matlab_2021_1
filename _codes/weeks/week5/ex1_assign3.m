% Create a linearly-spaced vector of the parameter domain theta
theta = linspace(0, 2*pi, 200);

figure(1); clf (1);             % Open a figure window
for k =1:6
    r1 = 1 + cos(k * theta);    % Calculate the values r1.
    r2=cos(k * theta);          % Calculate the values r2.
    subplot(2, 3, k);
    polarplot(theta, r1, 'b');  % Draw the polar curve r
    
    hold on;
    polarplot(theta, r2, 'r');
    title(sprintf('ex 1: The polar curve r=sin (%d* theta)', k));
end