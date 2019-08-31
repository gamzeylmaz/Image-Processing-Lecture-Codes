clear; clc; clear all;

I1 = rgb2gray(imread('lenna.jpg'));
figure,imshow(I1);
x1= 98; y1= 97;
%y :row x: column
%x2= 500;y2= 500;
[x2,y2]= size(I1);
I2= zeros(x2-x1+1,y2-y1+1);
I2= I1(y1:y2,x1:x2);
figure,imshow(uint8(I2));
