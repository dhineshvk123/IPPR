I = imread('C:\Users\rajes\Downloads\imag6.jpg');
figure;
subplot(2,2,1)
imshow(I)
title('Original Image')
Icomplement = imcomplement(I);
BW = imbinarize(Icomplement);
subplot(2,2,2)
imshow(BW)
title('Binary Image')
out = bwskel(BW);
subplot(2,2,3)
imshow(labeloverlay(I,out,'Transparency',0))
title('skeletonized Image')
out2 = bwskel(BW,'MinBranchLength',15);
subplot(2,2,4)
imshow(labeloverlay(I,out2,'Transparency',0))
title('skeletonized Pruned Image')
