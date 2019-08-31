
I1 = imread('lena.bmp');
[h,w] = size(I1);
I2 = zeros(h,w);

for(i= 1:1:w)
    I2(:,w-i+1)= I1(:,i);%for kullanmak yok.
end

figure,imshow(I1);
figure,imshow(uint8(I2));