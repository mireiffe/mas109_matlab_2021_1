right = 0;
wrong = 0;

for i = 1 : 10000
    sz = randi(10, [1, 2]);
    A = -10 + 20 * rand(sz(1), sz(2));
    R = rref(A);
    M = my_rref(A);
    T = abs(R - M) < 0.0001;
    t = prod(T(:));
    wrong = wrong + t;
    right = right + (1 - t);
end
disp('right : '); disp(right);
disp('wrong : '); disp(wrong);