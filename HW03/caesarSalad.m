function out = caesarSalad (in, shift)
%not a function for food, but to encode messages
    if (shift < 0)
        %check if the encoder is positive or negative
        shift = mod(shift, -26);
        %mod function works weird with negatives so... separate pos and neg
        out = in + shift;
        %start the output array with the shift included
        for c = 1:length(in)
            %use a for statement to make a loop of the ascii table from
            %lowercase a to z
            if (out(c) < 97)
            out(c) = out(c) + 26;
            end
        end
    else
        %all other cases where shift is positive or zero
        shift = mod(shift, 26);
        %same as above, but mod works as expected
        out = in + shift;
        for c = 1:length(in)
            %for statement again, wish we would have learned this
            if (out(c) > 122)
            out(c) = out(c) -26;
            end
        end
    end

out = char(out);
%return a string to the user
end