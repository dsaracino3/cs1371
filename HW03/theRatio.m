function mGrowth = theRatio (female, total, year)
ratio = female./total;
%new vector called ratio with the ratio of female students
rdiff = diff(ratio);
%use the diff function to create a vector of one less in legnth that is the
%difference of all adjacent elements
[mr, mp] = max(rdiff);
%new variable that is the maximum of that ratio differences vector whcih is
%the maximum difference which is what we are looking for
% mp = find(mr); what a bad function, this screwed up my code for way too
% looooooonnnnnnnnnngggggg
%new variable again to find the index of the maximum difference in ratio 
mGrowth = [year(mp), year(mp + 1)];
%since that ratio was one smaller, we can return that same index to show
%the previous year and one plus that to show the year of whcih the greatest
%difference actually ocurred.
end