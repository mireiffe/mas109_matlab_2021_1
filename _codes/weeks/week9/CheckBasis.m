function [Result]=CheckBasis(v1, v2, v3, v4, case_num)
%  if case_num=1, check the statement (a),
%  if case_num=2, check the statement (g),
%  if case_num=3, check the statement (h).

% Construct the matrix V.
V=[v1 v2 v3 v4];

switch case_num
    case 1
        fprintf('* You entered %d: statement (a) *\n', case_num);
        Result=rref(V);
        if det(Result)~=0
            disp('  Given vectors f orm a basis of 4 dimensional space.');
        else
            disp('Given vectors do not form a basis of 4 dimensional space.');
        end
    case 2
        fprintf('* You entered %d: statement (g) *\n', case_num);
        Result=det(V);
        if Result~=0
            disp('  Given vectors form a basis of 4 dimensional space.');
        else
            disp('  Given vectors do not form a basis of 4 dimensional space.');
        end
    case 3
        fprintf('* You entered %d: statement (h) *\n', case_num);
        [Q, D]=eig(V);  % D: the eigenvalue matrix of V such that VQ = QD.
        Result=prod(diag(D));
        if Result~=0
            disp('  Given vectors form a basis of 4 dimensional space');
        else
            disp('  Given vectors do not form a basis of 4 dimensional space.');
        end
end
end