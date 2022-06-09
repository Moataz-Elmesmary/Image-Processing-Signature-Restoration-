I=double(imread("SIGNATUR (2).jpg"));
I = I./max(max(max(I)));
kernel = [-1 -1 -1;-1 8 -1;-1 -1 -1];
filteredImage = imfilter(I, kernel, 'same');
subplot(1,2,1), imshow(filteredImage)   % High pass Filter More Ideal


G=fspecial('gaussian', [50 50], 5); 
Ig=imfilter(I,G,'same'); 
imshow(Ig)  % Low Pass Filter 
JK=I-Ig; 
subplot(1,2,2),imshow(JK)   % High Pass Filter Again