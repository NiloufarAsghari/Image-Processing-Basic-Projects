close all
clear all
pic = imread ( '5.jpg' );
subplot(2,2,1),imshow(pic);
I = rgb2gray(pic);
eg = edge ( I , 'canny',0.1 ) ;
bw = im2bw(eg);
subplot(2,2,2),imshow(eg);
se = strel ( 'disk' , 3 ) ;
bw = imclose(bw,se);
bw2 = imfill(bw,'holes');
bw2 = bwareaopen(bw2,100);
subplot(2,2,3),imshow(bw2)
imgLeaf = immultiply(I,bw);
subplot(2,2,4),imshow (imgLeaf),title('Final Resualt: Detected Leafs');
