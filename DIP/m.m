x=imread('a.jpg');
a=im2gray(x);
y=imread('Signature3.jpg');
b=im2gray(y);

K=imresize(a,3);
a_imadjust=imadjust(K);
J = imnoise(a_imadjust,'gaussian');
I = wiener2(J);

b_imadjust=imadjust(b);
M = imnoise(b_imadjust,'gaussian');
O = wiener2(M);

Z=imsharpen(I,'Radius',8,'Amount',10,'Threshold',0.2);
Q=imsharpen(O,'Radius',8,'Amount',10,'Threshold',0.2);

subplot(2,2,1),imshow(x),title("orignal1");
subplot(2,2,2),imshow(Z),title("mod1");
subplot(2,2,3),imshow(y),title("orignal2");
subplot(2,2,4),imshow(Q),title("mod2");
