function st = zoesStrizzatta (st, ca)
%1xM structure of ingredients and costs
%nx3 ca of meat veggie and cost

    for i = 1:length(st)
        for j = 1:size(ca,1)
            if strcmp(st(i).Ingredients, ca{j,1})
                st(i).Ingredients = ca{j,2};
                st(i).Costs = ca{j,3};
            end
        end
    end
end