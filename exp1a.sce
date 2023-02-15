a=imread('C:/Users/Wednesday/Pictures/DSC_2593_edited.jpg');
subplot(1,2,1);
title('Original Image');
imshow(a);
b=rgb2gray(a);
subplot(1,2,2);
title('Grey Image');
imshow(b);
