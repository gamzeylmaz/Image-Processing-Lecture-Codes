function [Iout] = image_dilate(Ibx,se)
sum_se = sum(sum(se));
[h,w] = size(Ibx);
[hse,wse] = size(se);
Iout = zeros(h,w);
for i = ceil(hse/2):1:h-floor(hse/2)
    for j = ceil(wse/2):1:w-floor(wse/2)
        block = Ibx(i-floor(hse/2):i+floor(hse/2),j-floor(wse/2):j+floor(hse/2));
        if (sum(sum(block .* se))>0);
        Iout(i,j) = 1;
        end
    end
end

end

