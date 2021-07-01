%--- The following is the function file 'GramSchmidt.m'. ---%
function Q = CGramSchmidt(A)
[m, n] = size(A);

% Initialize the matrix Q as an m*n zero matrix.
Q = zeros(m, n);
for i = 1 : n
    % v begins as jth column of A.
    v = A(:, i);
    for j = 1 : i-1
        % Subtract each component of orthogonal projection of v
        % onto the subspace spanned by the vector Q(:, i).
        q = Q(:, j);
        v = v - (q' * v) * q;
    end
    Q(:, i) = v / norm(v); % Normalize v by its 2-norm.
end
