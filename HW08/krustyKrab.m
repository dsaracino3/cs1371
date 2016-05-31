function total = krustyKrab (in)
%also need to print now, so open file with write access as well
fr = fopen(in, 'r');
fw = fopen([in(1:end-4),'_receipt.txt'], 'w');
line = fgets(fr);
money = [];
fprintf(fw, line);
line = fgets(fr);
%first we loop
%also print in the loop, jsut copy paste
    while ischar(line)
        [rest mon] = strtok(line, '$');
        mon = str2num(mon(2:end));
        money = [money, mon];
        fprintf(fw, line);
        line = fgets(fr);
    end
    %then find the numbers, then print them
subtotal = round(sum(money), 2);
total = round(1.15.*subtotal, 2);
fprintf(fw, '\nSubtotal=$%0.2f\n', subtotal);
fprintf(fw, 'Total=$%0.2f\n', total);
fprintf(fw, 'The Krusty Krab, Come spend your money here!');
fclose(fr);
fclose(fw);
end