% load 'mandrill' image and set values into [0, 1].
img = imread('mandrill.png');
img = double(img) / 255;
% make gray image and store.
g_img = rgb2gray(img);
imwrite(g_img, 'img_orig.jpg');

% find SVD of the gray image.
[U, S ,V] = svd(g_img);

% for visualization
figure;
sgtitle ('This is an Omaju for the textbook cover.')
preset = [200 , 150 , 100 , 80, 50, 30, 20, 15, 10, 5, 3];
fig_loc = [10:5:25 , 24, 23, 22, 21:-5:6];
for i = 1:11
    temp_S = S;
    temp_S(preset(i):end, preset(i):end) = 0;
    temp_img = U * temp_S * V';
    img_name = sprintf('img_%d.jpg', preset(i));
    imwrite (temp_img, img_name);
    subplot (5, 5, fig_loc (i));
    imshow (temp_img);
    title(sprintf('%.1f kb', imfinfo(img_name).FileSize / 1024))
end
% draw 'full' gray image
subplot(5, 5, [2:4, 7:9, 12:14, 17:19]) ; imshow (img);
title(sprintf ('%.1f kb(size of gray image file)', imfinfo ('img_orig.jpg'). FileSize / 1024))