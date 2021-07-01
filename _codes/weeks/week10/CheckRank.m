%--- function file 'CheckRank.m' ---%
function [rank_A]= CheckRank(A)
[m, n]=size(A); % size of given matrix
flg=1;          % flag for while loop
if m > n        % if (# of row) > (# of col)
    A = A';
end
A=sym(A);       % Set A as a symbolic object

K = min(m,n);   N = max(m,n);   % k : row number, N: col number
k = K;          % from the largest size of submatrix
while flg == 1
    comb_row=nchoosek(1:K, k);  % combinations of row
    comb_col=nchoosek(1:N, k);  % combinations of columns
    for ii=1:size(comb_row)
        selected_A=A(comb_row(ii,:),:); % selected row index
        for jj=1:size(comb_col)
            sub_A=selected_A(:,comb_col(jj, :));   % selected col index
            if det(sub_A)~=0    % if non zeros determinant appears
                rank_A=k;       % the size at that time <- rank
                flg=0;          % stop the while loop.
            end
        end
    end
    % if all submatrices of size k have a zero determinant,
    % reduce the size of submatrix.
    k=k-1;
end
end