mandrill = rgb2gray(imread('mandrill.png'));
mandrill = double(mandrill);
[U, S, V] = svd(mandrill);

%%
fullSV = U * S * V';
figure; 
subplot(1, 2, 1); 
imshow(mandrill, [0, 255]);
title('Original image');
subplot(1, 2, 2); 
imshow(fullSV, [0, 255]);
title('Using all singular values');

%%
SV10 = U(:, 1:5) * S(1:5, 1:5) * V(:, 1:5)';
figure; 
subplot(1, 2, 1); 
imshow(mandrill, [0, 255]);
title('Original image');
subplot(1, 2, 2); 
imshow(SV10, [0, 255]);
title('Using 5 singular values');

%%
figure;
bar(diag(S));
title('Singular values');

%%
SV100 = U(:, 1:100) * S(1:100, 1:100) * V(:, 1:100)';
figure; 
subplot(1, 2, 1); 
imshow(mandrill, [0, 255]);
title('Original image');
subplot(1, 2, 2); 
imshow(SV100, [0, 255]);
title('Using 100 singular values');