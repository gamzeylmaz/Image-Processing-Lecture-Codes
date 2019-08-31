clear; clc; clear all;

I1 = rgb2gray((imread('lenna.jpg')));
[h,w] = size(I1);
I2 = zeros(2*h,2*w);

for i = 1:1:w
    for j = 1:1:h
        I2(j*2,i*2) = I1(j,i);%sag alt
        I2(j*2-1,i*2) = I1(j,i);%sag üst
        I2(j*2-1,i*2-1) = I1(j,i);%sol üst
        I2(j*2,i*2-1) = I1(j,i);%sol alt
    end
end

%komsu piksellerin ortalamasini alarak hesaplama
% for i = 1:1:w-1
%     for j = 1:1:h-1
%         I2(j*2,i*2)=(I1(j,i)+I1(j+1,i)+I1(j,i+1)+I1(j+1,i+1))/4;%sag alt
%         I2(j*2-1,i*2)=(I1(j,i)+I1(j+1,i))/2;%sag üst
%         I2(j*2-1,i*2-1)=I1(j,i);%sol üst
%         I2(j*2,i*2-1)=(I1(j,i)+I1(j+1,i))/2;%sol alt
%
%     end
% end
%
figure,imshow(uint8(I1));title('original');
figure,imshow(uint8(I2));title('zoom_in');
