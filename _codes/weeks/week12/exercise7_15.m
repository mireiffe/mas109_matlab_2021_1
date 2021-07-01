u1 = [3 1 3 2 6]'; v1 = [2 6 3 4 2]';
u2 = [4 5 7 2 4]'; v2 = [3 1 5 8 3]';
u3 = [3 2 1 5 4]'; v3 = [5 1 2 6 7]';
u4 = [2 9 1 4 4]'; v4 = [8 4 3 2 6]';
u5 = [3 3 6 6 7]'; v5 = [5 5 6 3 4]';

U = [u1 u2 u3 u4 u5];
V = [v1 v2 v3 v4 v5];

format short;

% Initialization.
P_B1B2 = zeros(5);
P_B2B1 = zeros(5);

for j = 1:5
    % Find the coordinate vector of U(:, j) in B1 with respect to B2.
    P_B1B2(:, j) = V\U(:, j);
    % Find the coordinate vector of V(:, j) in B2 with respect to B1.
    P_B2B1(:, j) = U\V(:, j);
end

disp('The transition matrix from B1 to B2 is'); disp(P_B1B2);
disp('The transition matrix from B2 to B1 is'); disp(P_B2B1);

w = [1 1 1 1 1]';

% Find the coordinate matrix of w with respect to B1.
w_B1 = U\w;

% Find the coordinate matrix of w with respect to B2.
w_B2 = P_B1B2 * w_B1;

disp('The coordinate matrix of w with respect to B1 is'); disp(w_B1');
disp('The coordinate matrix of w with respect to B2 is'); disp(w_B2');