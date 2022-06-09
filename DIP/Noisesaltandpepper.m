I= imread('11.jpg');
N= imnoise(I,'salt & pepper',0.3);
red_channel = N(:, :, 1);
green_channel = N(:, :, 2);
blue_channel = N(:, :, 3);

red_channel = medfilt2(red_channel, [3 3]);
green_channel = medfilt2(green_channel, [3 3]);
blue_channel = medfilt2(blue_channel, [3 3]);

F = cat(3, red_channel, green_channel, blue_channel);

subplot(2, 1, 1);
imshow(N);
title('Noisy Image');

subplot(2, 1, 2);
imshow(F);
title('Image After Noise Removal');
