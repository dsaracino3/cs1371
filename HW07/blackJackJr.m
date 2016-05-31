function num = blackJackJr (vec)
count = 0;
num = 0;
%for loop to count till the end of vec
    for i = 1:length(vec)
        %check if count is till than 21
        if count <= 21
            count = count + vec(i);
            %check again because there might be 0
            if count <= 21
                num = num + 1;
            end
        end
    end
end