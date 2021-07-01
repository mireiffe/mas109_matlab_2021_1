function rref_A = my_rref(A)
% Find the reduced row echelon form of A
% by performing Gauss-Jordan elimination with partial pivoting.

[m, n] = size(A);
rref_A = A; % Initialization of rref_A as A.

% Forward Phase with row interchanges.
rowIdx = 1; % Count row.
for colIdx = 1:n
    % Find element to interchange two rows.
    [maxEntry, maxIdx] = max(abs(rref_A(rowIdx:m, colIdx)));
    
    if maxEntry >= 1E-10    % If this column is a non-zero vector,
                            % then store index of pivot column.
                            % This part is more complicated than it looks.
                            % You may need to consider the 'round-off error'
        pivotCols(rowIdx) = colIdx;
        % Interchanging two rows.
        rref_A([rowIdx, maxIdx + rowIdx - 1], :) = rref_A([maxIdx + rowIdx - 1, rowIdx], :);
        % Normalizing current row.
        rref_A(rowIdx, :) = rref_A(rowIdx, :) / rref_A(rowIdx, colIdx);
        % Successive row operatiosn.
        for r = rowIdx + 1:m
            rref_A(r, :) = rref_A(r, :) - rref_A(r, colIdx) * rref_A(rowIdx, :);
        end
        rowIdx = rowIdx + 1;    % Move onto the next row.
    end
    if rowIdx > m               % If it was finished , stop.
        break
    end
end

% Backward phase.
preLding1Row = 0;
for pc = pivotCols(end:-1:1)    % Find only the pivot columns.
    
    
    % This is looking for the index of row in which leading 1 is apeared .
    for lding1Row = m - preLding1Row:-1:1
        preLding1Row = preLding1Row + 1;
        if rref_A(lding1Row, pc) >= 1E-10
            break
        end
    end
    for r = (lding1Row - 1):-1:1
        % Add 'minus (r, pivotCol)-entry times the ith row' to the kth row.
        rref_A(r, :) = rref_A(r, :) - rref_A(r, pc) * rref_A(lding1Row, :);
    end
end
end