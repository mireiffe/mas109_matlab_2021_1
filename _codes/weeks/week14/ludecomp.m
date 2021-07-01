%--- This is a function file 'ludecomp.m' ---%
function [L, U] = ludecomp(A)

% The number of rows and columns of the matrix A.
[nrow, ncol] = size(A);

% Initialization of U and L.
U = A; L = eye(ncol);

% Forward Elimination %
for i=1:nrow
    % Find the first nonzero entry of the ith row.
    for k=i:ncol
        if U(i,k) ~= 0
            break % Terminates the execution of the loop.
        end
    end
    temp1 = U(i,k); % Save U(i,k) in temp.
    U(i,:) = (1/temp1) * U(i,:);
    % Normalize the pivot (i,k)-entry by 1 to the ith row.
    L(i,i) = (1/temp1)^(-1);
    % Place the reciprocal of the multiplier in that position in U.
    if i ~= nrow
        for j=(i+1):nrow
            temp2 = U(j,k); % Save U(j,k) in temp2.
            U(j,:) = ((-temp2) * U(i,:)) + U(j,:);
            % Add minus (j,k)-entry times the ith row to the jth row
            L(j,i) = -(-temp2);
            % Place the negative of the multiplier in that position in U.
        end
    end
end