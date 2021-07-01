function rref_A = my_rref(A)
% Find the reduced row echelon form of A
% by performing Gauss-Jordan elimination with partial pivoting.

[m, n] = size(A);
rref_A = A;             % Initialization of rref_A as A.

% Forward phase with row interchanges.
rowIdx = 1;             % Count row.
for colIdx = 1:n
    % Find element to interchange two rows.
    [maxEntry, maxIdx] = max(abs(rref_A(rowIdx:m, colIdx)));
    
    if ---BLANK---      % If this column is a non-zero vector,
                        % then store index of pivot column.
                        % This part is more complicated than it looks.
                        % You may need to consider the 'round-off error'
        pivotCols(rowIdx) = colIdx;
        % Interchanging two rows.
        ---BLANK---;
        % Normalizing current row.
        rref_A(rowIdx, :) = ---BLANK---;
        % Successive row operation.
        for r = ---BLANK---
            rref_A(r, :) = rref_A(r, :) - rref_A(r, colIdx) * rref_A(rowIdx, :);
        end
        rowIdx = rowIdx + 1;    % Move onto the next row.
    end
    if rowIdx > m      	% If it was finished, stop.
        break
    end
end

% Backward phase.
for pc = ---BLANK---    % Find only the pivot columns.
    preLding1Row = 0;
    
    % This is looking for the index of row in which leading 1 is apeared .
    for lding1Row = m - preLding1Row:-1:1
        preLding1Row = ---BLANK---;
        if rref_A(lding1Row, pc) >= ---BLANK---
            break       % here, you should focus on the value of `lding1Row`.
        end
    end
    for r = (lding1Row - 1):-1:1
        % Add 'minus (r, pivotCol)-entry times the ith row' to the kth row.
        rref_A(r, :) = ---BLANK---;
    end
end
end