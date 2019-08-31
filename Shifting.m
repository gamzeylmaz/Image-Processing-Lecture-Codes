% x->5 : to the right
% y->2 : to the down
%h:height, rows
%w:width,columns

clear; clc; clear all;

I1 = rgb2gray(imread('lenna.jpg'));
x = 15;
y = 12;
[h,w] = size(I1);
I2 = zeros(h,w);
I2(y+1:h,x+1:w)= I1(1:h-y,1:w-x);
figure,imshow(I1);title('original');
figure,imshow(uint8(I2));title('cropped');
% %
% x = -15;
% y = -25;
% [h,w] = size(I1);
% Itemp = zeros(3*h,3*w);
% Itemp(h+1+y:2*h+y,w+1+x:2*w+x) = I1;
% I2 = Itemp(h+1:2*h,w+1:2*w);
% figure,imshow(I1);title('original');
% figure,imshow(uint8(I2));title('shifted');
%
