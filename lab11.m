Img1 =imread('C:\Users\rajes\Downloads\imag6.jpg');
Img2=imresize(Img1,[100 100])
Img3=rgb2gray(Img2)
Img=imbinarize(Img3)
L = bwlabel(Img,8)
figure;
subplot(2,2,1)
imshow(Img1)
title('Original Image')
subplot(2,2,2)
imshow(Img2)
title('Resized Image')
subplot(2,2,3)
imshow(Img3)
title('gray level Image')
subplot(2,2,4)
imshow(L)
title('connected component')

