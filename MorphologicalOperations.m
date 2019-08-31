clc;clear all;close all;

% I1 = imread('cameraman.tif');

I1 = zeros(100,100);

I1(50:80,40:90) = 1;
I1(60:75,45:88) = 0;
Ibx = I1;
Ac = not(Ibx);%giris binary image in tumleyeni
[h,w] = size(I1);

%level = graythresh(I1);
%Ac = I1>(255*level);
%figure,imshow(Ib);title('binary image');
%Ibx = I1 <= (255*level);
%se = [0 1 0;1 1 1;0 1 0];
B = [1 1 1;1 1 1;1 1 1];%daha sert erosion yapti
%se = ones(10,10);%
%----------------------------
%Iout1 = image_dilate(Ibx,se);
%Iout2 = Ibx-Iout1;
Xk_1 = zeros(h,w);
Xk_1(64,64) = 1; 

while(1)
    temp = image_dilate(Xk_1,B);
    Xk = and(temp,Ac);
    
    if (sum(sum(Xk==Xk_1))== w*h)
        break;
    end
    
    Xk_1 = Xk;
    
end
Ifilled = Ibx+ Xk;
figure,imshow(Ac);title('Ac');
figure,imshow(Ibx);title('original binary')
figure,imshow(Ifilled);title('filled image');
