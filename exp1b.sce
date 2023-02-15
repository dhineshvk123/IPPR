a=imread("C:\Users\Wednesday\Pictures\batman-fan-sketch.jpg");
a=rgb2gray(a);
a=imresize(a, [100 100]);
subplot (1,6,1)
title('original image of a');
imshow (a);
b=imread("C:\Users\Wednesday\Pictures\the-dark-knight-rises-logo.jpg"); 
b=rgb2gray (b);
b=imresize(b, [100 100]);  
subplot (1,6,2)
title('original image of b');
imshow (b);
c= imadd(a,b);
subplot (1,6,3)
title ('image addition');
imshow(c);
d= imsubtract(a,b);
subplot (1,6,4)
title ('image subtraction');
imshow(d);
e= immultiply(a,b);
subplot (1,6,5)
title ('image multiplycation');
imshow(e);
f= imdivide(a,b);
f= imdivide(f,0.01);
subplot (1,6,6)
title ('image division');
imshow(f);
