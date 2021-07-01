%--- The following is the function file 'GramSchmidt.m'. ---%

% Find an orthonormal basis for col(A) when A has full column rank.
function Q = GramSchmidt(A)

[m, n] = size(A);

% Initialize the matrix Q as an m*n zero matrix.
Q = zeros(m, n);

for j = 1 : n
    % v begins as jth column of A.
    v = A(:, j);
    for i = 1 : (j-1)
        temp = Q(:, i)' * A(:, j);
        % Subtract each component of orthogonal projection of v
        % onto the subspace spanned by the vector Q(:, i).
        v = v - temp * Q(:, i);
    end
    Q(:, j) = v / norm(v); % Normalize v by its 2-norm.
end
end
% Q is an m*n matrix whose columns form an orthonormal basis for col(A).