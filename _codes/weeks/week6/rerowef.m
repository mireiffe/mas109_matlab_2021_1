function rref_A = rerowef (A)
%- Finding Reduced Row Echelon Form without Row Interchanges -%
[nrow , ncol ] = size (A); % The number of rows and columns of the matrix A.
rref_A = A; % In order to initialize it , copy A to rref_A .

% ---- Forward Phase ----%
for i=1: nrow
    % Find the first nonzero entry of the ith row.
    for k=i: ncol
        if rref_A (i,k) ~= 0
            break % Terminates the execution of the loop .
        end
    end
    rref_A (i ,:) = (1/ rref_A (i,k)) * rref_A (i ,:);
    % Normalize the pivot (i,k)-entry by 1 to the ith row.
    if i ~= nrow
        for j=(i+1) : nrow
            rref_A (j ,:) = ((- rref_A (j,k)) * rref_A (i ,:)) + rref_A (j, :);
            % Add minus (j,k)-entry times the ith row to the jth row.
        end
    end
end

% ---- Backward Phase ----%
for i= nrow : -1:2
    % Find the first nonzero entry of the ith row.
    for k=i: ncol
        if rref_A (i,k) ~= 0
            break % Terminates the execution of the loop .
        end
    end
    for j=(i -1) : -1:1
        rref_A (j ,:) = ((- rref_A (j,k)) * rref_A (i ,:)) + rref_A (j ,:);
        % Add minus (j,k)-entry times the ith row to the jth row.
    end
end
