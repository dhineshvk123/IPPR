clc ;
clear;
close;
img=imread ("C:\Users\Wednesday\Pictures\batman-fan-sketch.jpg");
img=rgb2gray(img);
//I=imresize (img-,[256,256]);
[ count, cells ]=imhist (img) ;
Iheq=imhistequal(img);
[count1,cells1 ] =imhist(Iheq);
corrbsameimg=corr2 (img, Iheq)
disp (corrbsameimg)

x= xcorr (count, count);
x1 = xcorr (count, count1 ) ;
subplot (2,1,1);
plot2d3 ('gnn',1: length ( x ) ,x ,2);
title('correlation-b/w-histograms-of+original image');
subplot (2,1,2);
plot2d3 ('gnn',1: length (x1) ,x1,2);
title('correlation-b/w histogram-of-original-and-equalized-image');
