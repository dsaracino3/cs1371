function out = hwGrader (ans1, in)
%define all variables, first open fles and then get lines
fidans = fopen(ans1);
fidin = fopen(in);
firstin = fgetl(fidin);
firstans = fgetl(fidans);
linein = fgetl(fidin);
lineans = fgetl(fidans);
vec = [];
%same as last time except two files and initial condition for weather
%student gets zero
    if ~strcmp(firstin, firstans)
        out = 0;
    else
        while ischar(linein) & ischar(lineans)
            if strcmp(linein, lineans)
                vec = [1, vec];
            else
                vec = [0, vec];
            end
            linein = fgetl(fidin);
            lineans = fgetl(fidans);
        end
         out = round(double(sum(vec)./length(vec)).*100);
    end
    fclose(fidans);
    fclose(fidin);
end