w1 = [1 1 1]'; w2 = [0 1 1]'; w3 = [0 0 1]';
A = [w1 w2 w3]; % Construct a matrix A whose columns are w1, w2, and w3.
format short; [m, n] = size(A);
Q = zeros(m, n); % Initialize the matrix Q as an m*n zero matrix.

% Find an orthonormal basis for the column space of A.
for j = 1 : n
    v = A(:, j); % v begins as jth column of A.
    for i = 1 : (j-1)
        temp = Q(:, i)' * A(:, j);
        % Subtract each component of orthogonal projection of v
        % onto the subspace spanned by the vector Q(:, i).
        v = v - temp * Q(:, i);
    end
    Q(:, j) = v / norm(v); % Normalize v by its 2-norm.
end
disp('The orthonormal basis {q1,q2,q3} for R^3 from {w1,w2,w3} are as follows:')
disp('q1='); disp(Q(:,1)'); disp('q2='); disp(Q(:,2)'); disp('q3='); disp(Q(:,3)');