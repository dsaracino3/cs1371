function snapchat (fn, swipes, filt)
swipes = mod(swipes, 5);
im = imread(fn);
if swipes == 0
    imwrite(im, [fn(1:end-4) '_filtered.png'], 'png');
elseif swipes == 1
    im = 255 - im;
    imwrite(im, [fn(1:end-4) '_filtered.png'], 'png');
elseif swipes == 2
    im = double(im);
    gray = (im(:,:, 1) + im(:,:,2) + im(:,:,3))/3;
    im = cat(3, gray, gray, gray);
    im = uint8(im);
    imwrite(im, [fn(1:end-4) '_filtered.png'], 'png');
elseif swipes == 3
    im = double(im);
    im = im/255;
    hsl = rgb_hsl(im, 'hsl');
    hue = hsl(:,:,1);
    sat = hsl(:,:,2);
    light = hsl(:,:,3);
    sat = sat*filt;
    hsl = cat(3, hue, sat, light);
    im = rgb_hsl(hsl, 'rgb');
    im = im*255;
    im = round(im);
    im = uint8(im);
    imwrite(im, [fn(1:end-4) '_filtered.png'], 'png');
elseif swipes == 4
    [r, c, ~] = size(im);
    [rf, cf, ~] = size(filt);
    dimr = r/rf;
    dimc = c/cf;
    row = round(linspace(1, rf, rf*dimr));
    col = round(linspace(1, cf, cf*dimc));
    filt = filt(row, col, :);
    filtr = filt(:,:,1);
    filtg = filt(:,:,2);
    filtb = filt(:,:,3);
    mask = filtr == 0 & filtg == 255 & filtb == 0;
    mask = cat(3, mask, mask, mask);
    im(~mask) = filt(~mask);
    imwrite(im, [fn(1:end-4) '_filtered.png'], 'png');
end
end