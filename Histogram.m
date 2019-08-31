clc;clear all;close all;

I1 = double(imread('cameraman.tif'));
[h,w] = size(I1);
hist = zeros(1,256);%s?f?rlardan olusan histogram matrisi
I2 = zeros(h,w);
cdf_hist = zeros(1,256);

for i = 1:1:h
    for j = 1:1:w
        hist(I1(i,j)+1) = hist(I1(i,j)+1)+1;%I1(i,j)+1 pixel degerinin s?f?r geldigi durumu engellemek icin
    end
end
cdf_hist(1) = hist(1);
for k = 1:1:255
    cdf_hist(k+1) = cdf_hist(k)+hist(k+1);
end

% for k = 0:1:255
%     counter = 0;
%     for i = 1:1:h
%         for j = 1:1:w
%             if I1(i,j)== k
%                 counter = counter+1;
%             end
%
%         end
%     end
%     hist(k+1) = counter;
% end
%
figure,plot(hist);
figure,plot(cdf_hist);
for i = 1:1:h
    for j = 1:1:w
        v = I1(i,j);
        I2(i,j) = round((cdf_hist(v+1)-min(cdf_hist))/(w*h)-min(cdf_hist)*255);
    end
end
figure,imshow(uint8(I1));
figure,imshow(uint8(I2));