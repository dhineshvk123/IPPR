img= imread("C:\Users\Wednesday\Pictures\batman-fan-sketch.jpg");
img=rgb2gray(img);
subplot(2,3,1);
title('original');
imshow(img);
e=edge(img);    
subplot(2,3,2);
title('edge');
imshow(e);
e=edge(img,'prewitt');
subplot(2,3,3);
title('prewitt');
imshow(e);
e=edge(img,'canny',[0.06 0.2])
subplot(2,3,4);
title('canny');
imshow(e);
e=edge(img,'fftderiv',0.2)
subplot(2,3,5);
title('fftderiv');
imshow(e);
