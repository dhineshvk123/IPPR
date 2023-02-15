clc ;
clear ;
close;
I= imread ("C:\Users\Wednesday\Pictures\batman-fan-sketch.jpg");
Iblur1 = imfilter(I,2);
Iblur2 = imfilter(I,4);
Iblur3 = imfilter(I,8);
subplot(2,4,1)
imshow(I)
title('Original image')
subplot(2,4,2)
imshow(Iblur1)
title('Smoothed image, \sigma = 2')
subplot(2,4,3)
imshow(Iblur2)
title('Smoothed image, \sigma = 4')
subplot(2,4,4)
imshow(Iblur3)
title('Smoothed image, \sigma = 8')
IblurX1 = imfilter(I,[4 1]);
IblurX2 = imfilter(I,[8 1]);
IblurY1 = imfilter(I,[1 4]);
IblurY2 = imfilter(I,[1 8]);
subplot(2,4,5)
imshow(IblurX1)
title('Smoothed image, \sigma_x = 4, \sigma_y = 1')
subplot(2,4,6)
imshow(IblurX2)
title('Smoothed image, \sigma_x = 8, \sigma_y = 1')
subplot(2,4,7)
imshow(IblurY1)
title('Smoothed image, \sigma_x = 1, \sigma_y = 4')
subplot(2,4,8)
imshow(IblurY2)
title('Smoothed image, \sigma_x = 1, \sigma_y = 8')
