clc;
clear all;
close all;
a1 = imread('C:\Users\rajes\Downloads\imag6.jpg');
a = im2double(a1);
[m,n,k] = size(a);
ar = a(:,:,1);
ag = a(:,:,2);
ab = a(:,:,3);
br = 0.4*ar;
bg = 0.4*ag;
bb = 0.4*ab;
c = zeros(m,n,k);
c(:,:,1) = br;
c(:,:,2) = bg;
c(:,:,3) = bb;
figure;
subplot(1,2,1)
imshow(a)
title("original image")
subplot(1,2,2)
imshow(c)
title("enhanced image")
