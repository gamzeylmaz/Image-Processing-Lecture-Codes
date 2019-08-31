clear;clc;clear all;

img1 = rgb2gray(imread('lenna.jpg'));
[yeni_resim] = my_rotate(img1);
figure,imshow(yeni_resim);
% [h,w] = size(I);
%-------------------------------------90 derece
% I_New = zeros([w,h]);
% %I(i,:) demektir ki i.satirin butun sutunlarini al

% for(i = 1:1:h)%i birden baslasin h a kadar birer artarak gitsin
%     I_New(:,h-i+1) = I(i,:);
% end
% 
% figure,imshow(I);
% figure,imshow(uint8(I_New));
%--------------------------------------180 derece
% I_New=zeros([h,w]);
% for(i = 1:1:h)%i birden baslas?n h a kadar birer artarak gitsin
%     I_New(w-i+1,:) = I(i,:);
% end

% 
% figure,imshow(I);
% figure,imshow(uint8(I_New));
%--------------------------------------270 derece
%I_New = zeros([w,h]);
%I(i,:) demektir ki i.satirin butun sutunlarini al
% for(i=1:1:w)%i birden baslasin h a kadar birer artarak gitsin
%     I_New(w-i+1,:)=I(:,i);
% end
% 
% figure,imshow(I);
% figure,imshow(uint8(I_New));