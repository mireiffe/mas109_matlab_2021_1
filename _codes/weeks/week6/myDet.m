function [D] = myDet (A)
% A: input matrix , D: output

% ( determinant of input matrix A)
[m,n]= size (A);    % the size of given input matrix A.
D=0;                % initialization of deteminant .

if m~=n             % if A is not a square matrix ,
    % error message
    fprintf ('Error : given matrix is not a square matrix !\n');
else
    % othersize ,
    if m==2         % if input matrix A is 2x2 matrix ,
        % compute the determinant using ad -bc.
        D=A(1 ,1)*A(2 ,2) -A(1 ,2)*A(2 ,1);
    else
        if m >2     % if input matrix A is not 2x2 matrix ,
                    % In this for loop , we compute the determinant
                    % of A by a cofactor expansion along the first
                    % column of A using a recursive function call .
            for i=1: m
                D=D+( -1) ^(i+1)*A(i ,1)* myDet (A ([1:i -1, i+1:m], 2:n));
            end
        end
    end
end
end