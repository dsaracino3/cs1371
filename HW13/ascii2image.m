function ascii2image (filename, key, vec)
fh = fopen(filename);
line = fgetl(fh);
row = [];
mask = [];
while ischar(line)
    for i = 1:length(line)
        ch = line(i);
        place = ch == key;
        val = vec(place);
        row = [row val];
    end
    mask = [mask; row];
    row = [];
    line = fgetl(fh);
end
im = cat(3, mask, mask, mask);
imwrite(im, [filename(1:end-4), '.png'], 'png');
end