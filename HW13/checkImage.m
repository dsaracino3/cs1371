function str = checkImage (first, second)
im1 = imread(first);
im2 = imread(second);
[im1r im1c im1l] = size(im1);
[im2r im2c im2l] = size(im2);
if isequal(im1, im2)
    str = 'The images are the same.';
elseif im1r ~= im2r | im1c ~= im2c
    str = 'The images have different dimensions.';
else 
    str = 'The RGB values are different.';
    maskr = im1(:,:,1) ~= im2(:,:,1);
    maskg = im1(:,:,2) ~= im2(:,:,2);
    maskb = im1(:,:,3) ~= im2(:,:,3);
    mask = maskr | maskg | maskb;
    mask = cat(3, mask, mask, mask);
    new = im1;
    new(mask) = 0;
    new(~mask) = 255;
    imwrite(new, [first(1:end-4) 'VS' second], 'png');
end
end