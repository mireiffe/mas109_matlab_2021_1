% ------- The following is the script file `GramSchmidt.m'. -------
function Q = GramSchmidt(A)
[m, n] = size(A);

% Initialize the matrix Q as an m*n zero matrix.
Q = zeros(m, n);
for i = 1 : n
    % v starts with a column of A.
    v = A(:, i);
    for j = 1 : i-1
        % Subtract each component of orthogonal
        % projection of v onto the subspace spanned
        % by the previous orthonormal vectors.
        q = Q(:, j);
        v = v - (q' * v) * q;
    end
    % Normalize v by its Euclidean norm.
    Q(:, i) = v / norm(v);
end