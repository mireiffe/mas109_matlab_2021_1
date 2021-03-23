A = [6 -2 0; 9 -1 1; 3 7 5]; % Set the matrix A.

format rat; % Display results as a rational form.

% Initialization of U and L.
U = A; L = eye(3); 

% Multiply the first row by 1/6.
U(1,:)=(1/6)*U(1,:); 
% L(1,1) is the inverse of 1/6.
L(1,1)=(1/6)^(-1); 

% Add (-9) times the first to the second.
U(2,:)=((-9)*U(1,:))+U(2,:);
% L(2,1) is the negative of (-9).
L(2,1)=-(-9); 

% Add (-3) times the first to the third.
U(3,:)=((-3)*U(1,:))+U(3,:); 
% L(3,1) is the negative of (-3).
L(3,1)=-(-3); 

% Multiply the second row by 1/2.
U(2,:)=(1/2)*U(2,:);
% L(2,2) is the inverse of 1/2.
L(2,2)=(1/2)^(-1); 

% Add (-8) times the second to the third.
U(3,:)=((-8)*U(2,:))+U(3,:); 
% L(3,2) is the negative of (-8).
L(3,2)=-(-8); 

disp('A is'); disp(A);
disp('The Lower Triangular part L is'); disp(L);
disp('The Upper Triangular part U is'); disp(U);
disp('The product L*U is'); disp(L*U);