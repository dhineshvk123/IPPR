clc;
n=2;
img = rgb2gray(imread("C:\Users\Wednesday\Downloads\flower1.jpg"));
a=size(img);
w= a(2);
h= a(1);
im=zeros(100);
for i=1:n:h
    for j=1:n:w
        for k=0:n-1
            for l=0:n-1
                im(i+k,j+l)=img(i,j);
end
end
end
end
n1=4;
im1=zeros(100);
for i=1:n1:h
    for j=1:n1:w
        for k=0:n1-1
            for l=0:n1-1
                im1(i+k,j+l)=img(i,j);
end
end
end
end
n2=8;
im2=zeros(100);
for i=1:n2:h
    for j=1:n2:w
        for k=0:n2-1
            for l=0:n2-1
                im2(i+k,j+l)=img(i,j);
end
end
end
end
n3=12;
im3=zeros(100);
for i=1:n3:h
    for j=1:n3:w
        for k=0:n3-1
            for l=0:n3-1
                im3(i+k,j+l)=img(i,j);
end
end
end
end
subplot(2,3,1);
imshow(uint8(img));
title('original image');
subplot(2,3,2);
imshow(uint8(im));
title('sampled image: n=2');
subplot(2,3,3);
imshow(uint8(im1));
title('sampled image: n=4');
subplot(2,3,4);
imshow(uint8(im2));
title('sampled image: n=8');
subplot(2,3,5);
imshow(uint8(im3));
title('sampled image: n=12')
