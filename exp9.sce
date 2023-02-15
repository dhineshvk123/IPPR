img = imread ("C:\Users\Wednesday\Pictures\batman-fan-sketch.jpg");
img = rgb2gray (img);
subplot(2,2,1);
imshow ( img ) ;
e = edge ( img ,'canny', [0.06 0.2]) ;
// A p p l i e s canny e dg e d e t e c t i o n method
subplot(2,2,2);
imshow ( e)
[HM, rho, th]= imhough(e);
subplot(2,2,3);
scf();Sgrayplot(th,rho,HM',strf="021");
xset("colormap",hotcolormap(64))
