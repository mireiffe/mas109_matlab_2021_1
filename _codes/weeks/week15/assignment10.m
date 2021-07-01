%% make
img = zeros(375, 312);

wid = 6; st = 7;
for i = 1:3:33
    img(st + 2 * wid * (i - 1):st + 2 * wid * i, :) = 1;
end
% img = imgaussfilt(img, 1);
% figure; imshow(img);
% imwrite(img, 'assign10_stripe.png');

%%
I = double(im2gray(imread('assign10.png'))) / 255;
I = imgaussfilt(I, 1);
% figure; imshow(I, [0, 255]);

save('assign10', 'I', 'I_major', 'I_minor');

%%
clear
load('assign10.mat');

[U, S, V] = svd(I);

major = 1;
I_major = U(:, 1:major) * S(1:major, 1:major) * V(:, 1:major)';
I_minor = U(:, major+1:end) * S(major+1:end, major+1:end) * V(:, major+1:end)';

% temp = 100;
% I_minor = U(:, major+temp:end) * S(major+temp:end, major+temp:end) * V(:, major+temp:end)';


figure; imshow(I_major);
figure; imshow(I_minor);

