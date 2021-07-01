function [a, b]=LS_solver_sol(x, y, opt)
% --------- function file LS_Solver --------- %
% input data: x, y and opt
%   if opt=1, linear model (y=a*x+b)
%   if opt=2, exponential model (y=a*exp(b*x))
%   if opt=3, logarithmic model (y=a+b*ln(x))

[m1, n1]=size(x);   [m2, n2]=size(y);   % Sizes of the input datas.
xx=linspace(min(x), max(x), 100);       % xx will be used to plot the fitting curve.

if (m1~=1)||(m2~=1)||(n1~=n2)           % If the input data size is not proper,
    fprintf('Error: Improper input data.\n');   % print error message.
elseif (opt==1)||(opt==2)||(opt==3)     % option = 1, 2, 3.
    figure; plot(x, y, 'o');            % Plot the given data points.
    hold on;                            % Ready to draw the next graph.
    if opt == 1                         % Linear model
        fprintf('Linear model\n');      % Print out the 'Linear model'.
        A=[x' ones(n1,1)]; Y=y';        % Set the least squares problem.
        sol=A\Y;                        % Find the least squares solution.
        a=sol(1); b=sol(2);             % Fitting constants a and b.
        plot(xx, a*xx+b);               % Plot the fitting curve with a and b.
        title('Linear model (y=a*x+b)');
    elseif opt == 2                   	% Exponential model
        fprintf('Exponential model\n'); % Print out the 'Exponential model'.
        A=[ones(n1,1) x']; Y=log(y'); % Set the least squares problem.
        sol=A\Y;                    % Find the least squares solution.
        a=exp(sol(1)); b=sol(2);    % Fitting constants a and b.
        plot(xx, a*exp(b*xx));      % Plot the fitting curve with a and b.
        title('Exponential model (y=a*exp(b*x))')
    elseif opt == 3              	% Logarithmic model
        fprintf('Logarithmic model\n'); % Print out the 'Logarithmic model'.
        A=[ones(n1,1) log(x)']; Y=y'; % Set the least squares problem.
        sol=A\Y;                    % Find the least squares solution.
        a=sol(1); b=sol(2);         % Fitting constants a and b.
        plot(xx, a+b*log(xx));      % Plot the fitting curve with a and b.
        title('Logarithmic model (y=a+b*ln(x))');
    end
    hold off;                           % No more graph.
else                                    % for invalid [opt]
    fprintf('Error: Improper option value.\n'); % error message.
    return                              % Return the process.
end

end