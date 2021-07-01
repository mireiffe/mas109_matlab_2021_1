%--- This is a function file 'LinearSolver.m' ---%
function [rank_A, sol]=LinearSolver(A, b)
% We can skip the first output via `~`.
[~, n]=size(A);
rank_A=rank(A);

% Check that A has full column rank.
if rank_A<n
    fprintf('rank(A)=%d < %d  -> Not full column rank\n', rank_A, n);
    return; % If A does not have full column rank, then return.
else
    fprintf('rank(A)=%d = %d -> Full column rank\n', rank_A, n);
end

% From the reduced row echelon form of [A'*A |A'*b],
% find a solution to the normal equation A'Ax=A'b.

Aug=[A'*A A'*b];
rref_Aug=rref(Aug);
sol=rref_Aug(:,n+1);

fprintf('The least squares solution is');disp(sol');
end