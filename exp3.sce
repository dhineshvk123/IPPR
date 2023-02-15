img = rgb2gray(imread('C:\Users\Wednesday\Pictures\batman-fan-sketch.jpg'));
imgnoise = imnoise(img, 'salt and pepper');
subplot(2,3,1)
title('Original Image');
imshow(img);

subplot(2,3,2)
title('Noisy Image');
imshow(imgnoise);

flinear1=1/25*ones(5,5);
imglinear1=imfilter(imgnoise,flinear1);
subplot(2,3,3)
title('Linear Average Filtered');
imshow(imglinear1);

hsize=[5,5];
sigma=1;
flinear2=fspecial('gaussian',hsize,sigma);
imglinear2=imfilter(imgnoise,flinear2);
subplot(2,3,4)
title('Linear Gaussian Filtered');
imshow(imglinear2);

fnonlinear=[3,3];
imgnonlinear=immedian(imgnoise,fnonlinear);
subplot(2,3,5)
title('Median Filtered(Non-Linear)')
imshow(imgnonlinear)
