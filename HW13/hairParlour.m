function hairParlour (filename, org, new)
im = imread(filename);
ro = im(:,:,1);
go = im(:,:,2);
bo = im(:,:,3);
r = im(:,:,1);
g = im(:,:,2);
b = im(:,:,3);
if strcmp(org, new)
    red = [ro r];
    green = [go g];
    blue = [bo b];
    im = cat(3, red, green, blue);
    imwrite(im, [filename(1:end-4), '_beforeAfter.png'], 'png');
else
    if strcmp(org, 'Blonde')
        orgR = im(:,:,1);
        orgG = im(:,:,2);
        orgB = im(:,:,3);
        mask = orgR>= 205 & orgR <= 255 & orgG >= 180 & orgG <= 230 & orgB >= 0 & orgB <= 165;
        maskr = mask;
        maskg = mask;
        maskb = mask;
    elseif strcmp(org, 'Brunette')
        orgR = im(:,:,1);
        orgG = im(:,:,2);
        orgB = im(:,:,3);
        mask = orgR>= 100 & orgR <= 155 & orgG >= 30 & orgG <= 80 & orgB >= 15 & orgB <= 60;
        maskr = mask;
        maskg = mask;
        maskb = mask;
    elseif strcmp(org, 'Red')
        orgR = im(:,:,1);
        orgG = im(:,:,2);
        orgB = im(:,:,3);
        mask = orgR>= 210 & orgR <= 255 & orgG >= 80 & orgG <= 115 & orgB >= 25 & orgB <= 30;
        maskr = mask;
        maskg = mask;
        maskb = mask;
    end
    
    if strcmp(new, 'Blonde')
        r(maskr) = 255;
        g(maskg) = 219;
        b(maskb) = 74;
    elseif strcmp(new, 'Brunette')
        r(maskr) = 141;
        g(maskg) = 70;
        b(maskb) = 50;
    elseif strcmp(new, 'Red')
        r(maskr) = 212;
        g(maskg) = 80;
        b(maskb) = 24;
    end
    red = [ro r];
    green = [go g];
    blue = [bo b];
    im = cat(3, red, green, blue);
    imwrite(im, [filename(1:end-4), '_beforeAfter.png'], 'png');
end
end