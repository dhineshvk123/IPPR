S= imread ("C:\Users\Wednesday\Pictures\batman-fan-sketch.jpg" );
S = rgb2gray (S) ;
S2 = imrotate(S,45);
// Use the ORB to detect features
f1 = imdetect_ORB(S)
f2 = imdetect_ORB(S2)
// Extract the descriptor
d1 = imextract_DescriptorORB(S,f1);
d2 = imextract_DescriptorORB(S2,f2);
// Feature matching
m = immatch_BruteForce(d1,d2,4)
// Find the 10 best matches
[fout1,fout2,mout] = imbestmatches(f1,f2,m,10);
// Draw the matches
SS = imdrawmatches(S,S2,fout1,fout2,mout);
// Show the comparison
imshow(SS);
