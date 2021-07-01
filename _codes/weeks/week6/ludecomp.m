function [L, U] = ludecomp(A)
% Find the LU - decomposition without using row interchanges.

%- Finding the LU - decomposition without Row Interchanges -%
[nrow , ncol] = size (A);   % The number of rows and columns of the matrix A.
U = A; L = eye(ncol);       % Initialization of U and L.

% ---- Forward Phase ----%
for i = 1: nrow
    % Find the first nonzero entry of the ith row.
    for k=i:ncol
        if U(i,k) ~= 0
            break           % Terminates the execution of the loop.
        end
    end
    
    temp1 = U(i,k);         % Save U(i,k) in temp.
    U(i, :) = (1/ temp1) * U(i, :);
    % Normalize the pivot (i,k)-entry by 1 to the ith row.
    L(i, i) = (1 / temp1)^(-1);
    % Place the reciprocal of the multiplier in that position in U.
    
    if i ~= nrow
        for j = (i+1):nrow
            temp2 = U(j, k);% Save U(j,k) in temp2.
            U(j, :) = ((-temp2) * U(i, :)) + U(j, :);
            % Add minus (j,k)-entry times the ith row to the jth row
            L(j,i) = -(-temp2);
            % Place the negative of the multiplier in that position U.
        end
    end
end