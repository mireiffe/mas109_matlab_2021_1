% operations.m

% Declare two matrices, A and B.
A = [5, -2, -3; -5, 1, 1; 0, 1, 7];
B = [3, 1, 2; -1, 1, -2; 1, 1, 4];

%--------- operations ----------
M1 = A * B;     M2 = A .* B;
D1 = A / B;     D2 = A ./ B;
% -------------------------------

% some calculations.
a = min(M1(:)) * sum(M2(2, :));
b = sum(D1 > D2, 'a');

answer = a + b;         % compute `answer`.
disp(answer)            % print the `answer` on `Command Window`.