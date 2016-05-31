function [ca, cost] = thriftyHalloweener (s, str)
fn = [camelCase(str) '.xls'];
[r c] = size(s);
[num txt raw] = xlsread(fn);
cost = 0;
finalStore = {};
finalPrice = {};
for i = 1:length(txt)
    store = {};
    price = [];
    for j = 1:length(s)
        for k = 1:length(s(j).Inventory)
            if strcmp(s(j).Inventory(k).Item, txt(i))
                price = [price s(j).Inventory(k).Price];
                store = [store s(j).Name];
            end
        end
    end
    if ~isempty(price)
        [bestPrice ind] = min(price);
        bestStore = store(ind);
        cost = cost + bestPrice;
    end
    finalStore = [finalStore; bestStore];
    finalPrice = [finalPrice; bestPrice];
end
finalStore = ['Store'; finalStore];
finalPrice = ['Price'; finalPrice];
finalItem = ['Item'; txt];
ca = [finalItem, finalStore, finalPrice];
end