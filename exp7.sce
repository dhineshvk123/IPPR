img= imread("C:\Users\Wednesday\Pictures\batman-fan-sketch.jpg");
img=rgb2gray(img);
threshold =0.2;
imagen1=~im2bw(img, threshold);
subplot(2,2,1)
title ('threshold=0.1')
imshow (imagen1)
threshold =0.3;
imagen2=~im2bw(img,threshold);
subplot(2,2,2)
title('threshold = 0.2')
imshow(imagen2)
threshold =0.4,
imagen3=~im2bw(img ,threshold);
subplot(2,2,3)
title('threshold=0.3')
imshow(imagen3)
threshold=0.5;
imagen4=~im2bw(img, threshold);
subplot(2,2,4)
title('threshold=0.4')
imshow(imagen4)
