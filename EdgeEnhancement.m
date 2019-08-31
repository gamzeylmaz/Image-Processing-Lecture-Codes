clc; clear all;;
I1 = double(imread('cameraman.tif'));
[h,w] = size(I1);
I2 = double(zeros(h,w));
p = 2;
k = [-p/8 -p/8 -p/8; -p/8 p+1 -p/8;-p/8 -p/8 -p/8];
k = k/sum(sum(k));
[kh,kw] = size(k);

fkh = floor(kh/2);
ckh = ceil(kh/2);%yukari yuvarlar.

fkw = floor(kw/2);
ckw = ceil(kw/2);
%.* karsilik gelen elemanlarini carp demek.
tic
for i= ckh : 1 : h-fkh
    for j= ckw : 1 : w-ckw
        
     I2(i,j)= sum(sum(I1(i-fkh:i+fkh,j-fkw:j+fkw).*k));
     
    end
end
toc
figure,imshow(uint8(I1));
figure,imshow(uint8(I2));