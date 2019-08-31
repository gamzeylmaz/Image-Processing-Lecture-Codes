% Is median filter lineer? Why?
% adaptive median: changing size of filter
% use adaptive median for removing noise 
clc;clear all;close all;

I1 = imread('cameraman.tif');
In = imnoise(I1,'salt & pepper',0.1);
fs = 5;
[h,w] = size(I1);
I2 = zeros(h,w);

for i = ceil(fs/2):1:h-floor(fs/2)
    for j = ceil(fs/2):1:w-floor(fs/2)
        if(or(In(i,j)==0, In(i,j)==255))
            block = In(i-floor(fs/2):i+floor(fs/2),j-floor(fs/2):j+floor(fs/2));
            sorted_block = sort(block);
            I2(i,j) = sorted_block(ceil((fs*fs)/2));
        else
            I2(i,j) = In(i,j);
        end
        
    end
end

figure,imshow(uint8(I1));
figure,imshow(uint8(In));
figure,imshow(uint8(I2));