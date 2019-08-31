clc;clear all;close all;

I1 = rgb2gray(imread('team.jpg'));
block = I1();
[h,w] = size(I1);
[bh,bw] = size(block);
min_sad = 123123123123;

%Itarget = I1;
%Itarget = imnoise(Itarget,'salt & pepper');

for i = 1:1:h-bh
    for j = 1:1:w-bw
        sad_cur = sum(sum(abs(I1(i:i+bh-1,j:j+bw-1)-block)));
        if sad_cur<min_sad
            min_sad = sad_cur;
            min_i = i;
            min_j = j;
        end
    end
end


Itarget(min_i:min_i+bh,min_j) = 255;
Itarget(min_i:min_i+bh,min_j+bw) = 255;
Itarget(min_i,min_j:min_j+bw) = 255;
Itarget(min_i+bh,min_j:min_j+bw) = 255;


figure,imshow(block);
figure,imshow(Itarget);