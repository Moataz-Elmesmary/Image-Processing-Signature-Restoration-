

% high pass filter
I=imread("SIGNATUR (2).jpg");
I=im2double(I);
FI=fft2(I);
[M,N]=size(I);
u=0:(M-1);
v=0:(N-1);
indx=find(u>M/2);
u(indx)=u(indx)-M;
indy=find(v>N/2);
v(indy)=v(indy)-N;
[U,V]=meshgrid(u,v);
D=sqrt(U.^2+V.^2);
D0=30;
H=double(D<D0);
H=1-H;
%G=H.*FI;
RG=ifft2(FI);


subplot(3,3,1);imshow(I);title('original');
subplot(3,3,2);imshow(abs(fftshift(H)));title('ideal high pass filter');
subplot(3,3,3);imshow(real(RG));title('sharp image');

%low pass filter
I=imread("SIGNATUR (2).jpg");
I=im2double(I);
FI=fft2(I);
[M,N]=size(I);
u=0:(M-1);
v=0:(N-1);
indx=find(u>M/2);
u(indx)=u(indx)-M;
indy=find(v>N/2);
v(indy)=v(indy)-N;
[U,V]=meshgrid(u,v);
D=sqrt(U.^2+V.^2);
D0=30;
H=double(D<D0);
%H=1-H;
%G=H.*FI;
RG=ifft2(FI);


subplot(3,3,4);imshow(I);title('original');
subplot(3,3,5);imshow(abs(fftshift(H)));title('ideal low pass filter');
subplot(3,3,6);imshow(real(RG));title('smooth image');
