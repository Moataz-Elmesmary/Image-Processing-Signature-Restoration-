
a=imread('Signature1.jpg');
subplot(2,2,1);
imshow(a);
title('Original Grayscale Image');

subplot(2,2,3);
imhist(a);
title('Histogram of Original Grayscale Image');

j=histeq(a);

subplot(2,2,2);
imshow(j);
title('Image after histogram equalization');

subplot(2,2,4);
imhist(j,50);
title('Histogram of Image after histogram equalization');
