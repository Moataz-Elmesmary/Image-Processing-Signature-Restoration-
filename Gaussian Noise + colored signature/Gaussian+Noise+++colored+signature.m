RGB = imread('der.png');

I = im2gray(RGB);

J = imnoise(I,'gaussian');

K = wiener2(J);


subplot(1,3,1),imshow(RGB),title('original'),
subplot(1,3,2),imshow(J),title('Gaussian Noise'),
subplot(1,3,3),imshow(K),title('Removed by Wiener');