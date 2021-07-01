load('training_image.mat'); train_x = double(train_x);
load('training_target.mat'); train_y = double(train_y);
load('test_image.mat'); test_x = double(test_x);
load('test_target.mat'); test_y = double(test_y);

% train_idx = [find(train_y == 0), find(train_y == 1)];
% test_idx = [find(test_y == 0), find(test_y == 1)];

num_for_use = [0, 1];
train_idx = [];
test_idx = [];
for i = num_for_use
    train_idx = [train_idx, find(train_y == i)];
    test_idx = [test_idx, find(test_y == i)];
end

% Leave only data that are 0 or 1.
train_x = train_x(:, :, train_idx); train_y = train_y(:, train_idx);
test_x = test_x(:, :, test_idx);    test_y = test_y(:, test_idx);

M = reshape(train_x, 28^2, [])';    % [] means that 'matche dimension automatically'.
y = train_y';

A = M' * M + rand(size(M, 2)) * 0.001;  % add random perturbation.
b = M' * y;
x = linsolve(A, b);

T = reshape(test_x, 28^2, [])';
z = test_y';

w = T * x;   % compute the prediction by the best approximate solution `x`
acc = sum(round(w) == z) / length(w);  % compute the accuracy: (# of correct answers) / (# of data points)
fprintf('Accuracy = %.2f %% \n', acc * 100)