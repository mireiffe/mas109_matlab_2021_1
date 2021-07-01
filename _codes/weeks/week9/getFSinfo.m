function info = getFSinfo(A)

[m,n]=size(A);        	% size of matrix A

% row(A): basis and dimension
rank_A = rank(A);         % rank of A
rowA = colspace(sym(A')); % way1: MATLAB command colspace
% rowA2=rref(A);  % way2: reduced row echelon form
rowA_basis=rowA(:, 1:rank_A)';  % basis of row(A)

% col(A): basis and dimension
colA=colspace(sym(A));
colA_basis=colA(:, 1:rank_A)';  % basis of col(A)

% null(A): basis and dimension
nullA=null(A, 'r');
nullity=n-rank_A;   % way1. Dimension theorem
nullA_basis=nullA(:, 1:nullity)';
%     nullity=size(nullA,2);  % way2. return the corresponding value

% null(A'): basis and dimension
nullAtrans=null(A', 'r');

% nullAtrans(:, 1:size(nullAtrans,2))'; basis of null(A')
nullity_T=m-rank_A;    % way1. using the relation
nullAtrans_basis=nullAtrans(:,1:nullity_T)';
%     nullity=size(nullAtrans,2);   % way2. return the corresponding value

% fprintf('****************************************************************\n');
disp('Given matrix is:'); disp(A);
fprintf('== Dimension of the fundamental spaces of given matrix == \n');
fprintf('dim(row(A))=dim(col(A)): %d,', rank_A);
fprintf('\t dim(null(A)): %d,\t dim(null(A_trans)): %d \n\n', nullity, nullity_T);
fprintf('== Basis of the fundamental spaces of given matrix (in row vectors) == \n');
disp(' row(A)'); disp(double(rowA_basis));
disp(' col(A)'); disp(double(colA_basis));
disp(' null(A)'); disp(nullA_basis);
disp(' null(A_trans)'); disp(nullAtrans_basis);
fprintf('\n****************************************************************\n');
end