function trumpYourCat (catt, top)
imtop = imread(top);
imcat = imread(catt);
topR = imtop(:,:,1);
topG = imtop(:,:,2);
topB = imtop(:,:,3);
mask = topR<= 150 & topG >= 180 & topB <= 120;
maskG = cat(3, mask, mask, mask);
imcat(~maskG) = imtop(~maskG);
imwrite(imcat, ['trumped_' catt]);
end