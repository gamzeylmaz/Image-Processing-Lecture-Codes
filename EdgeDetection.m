clc; clear all; close all;

I1 = imread('cameraman.tif');
k1x=[-1 0 1;-1 0 1;-1 0 1];
k1y=[1 1 1 ;0 0 0;-1 -1 -1];
%k2=[0 1 0;1 -4 1;0 1 0];%kernels
Iedge1 = imfilter(I1,k1x);
Iedge2 = imfilter(I1,k1y);
I1edge = Iedge1+Iedge2;
I1edgemp = edge(I1,'canny');
figure,imshow(I1edge);title('prewitt');
figure,imshow(I1edgemp);title('canny');