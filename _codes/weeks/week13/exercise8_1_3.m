% Transition matrix from B to the standard basis for R^n.
U=B1;

% Transition matrix from B' to the standard basis for R^m.
V=B2; 

T=[7 12 -5 0 0 ; 3 10 0 13 1; -9 0 -1 0 -3];

disp('V'); disp(V);
disp('TB1B2'); disp(TB1B2);
disp('inv(U)'); disp(inv(U));
disp('V*TB1B2*inv(U)');disp(V*TB1B2*inv(U));
disp('T'); disp(T);