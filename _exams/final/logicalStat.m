%% (1)
% Set `A` a matrix of size 2021 * 616
A = reshape(1:56, 7, 8);

A(14 <= A & 43 >= A) = 0;
a = A;


%% (2)
% Set `A` a matrix of size 2021 * 616
A = reshape(1:56, 7, 8);

A = A .* double(14 > A | 44 <= A);
b = A;

%% (3)
% Set `A` a matrix of size 2021 * 616
A = reshape(1:56, 7, 8);

A = A .* (1 - (14 <= A) .* (43 >= A));
c = A;

%% (4)
% Set `A` a matrix of size 2021 * 616
A = reshape(1:56, 7, 8);

A = A(14 <= A) .* A(43 >= A);
d = A;

%% (5)
% Set `A` a matrix of size 2021 * 616
A = reshape(1:56, 7, 8);

A = A .* ((14 > A) + (43 < A));
e = A;

%% (6)
% Set `A` a matrix of size 2021 * 616
% A = zeros(7, 8);
clear A
A(1:13) = 1:13;
A(44:56) = 44:56;
A = reshape(A, 7, 8);
f = A;

%% (7)
clear A
A = zeros(7, 8);
A(:) = [1:13, zeros(1, 30), 44:56];
g = A;
