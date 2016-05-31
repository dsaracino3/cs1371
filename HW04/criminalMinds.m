function statement = criminalMinds (s1, s2, s3, s4)
%format for later sprintf
formatSpec = 'Suspect #%d is lying.';
%----------------------------all()-----------------------
%so we have to use the == function which makes an array based on the values
%an weather they are equal depending on the legnth, so we can use the all
%function to determine if they are totally equal
%----------------------------(any)-----------------------
%the any function determines if any of them are true, so we can use the not
%operator and the any function to determine if any of them are false
sone = ~any([all(s1 == s2), all(s1 == s3), all(s1 == s4)]);
stwo = ~any([all(s2 == s1), all(s2 == s3), all(s2 == s4)]);
sthree = ~any([all(s3 == s1), all(s3 == s2), all(s3 == s4)]);
sfour = ~any([all(s4 == s1), all(s4 == s2), all(s4 == s3)]);
%only one of the above will be false if only one of the suspects is the
%acutal criminal so we can make an array of these boolean values and only
%one will be true, the true criminal
s = [sone, stwo, sthree, sfour];
%we can use the find function to find the true value and true criminal
sp = find(s);
%we can finally use the sprintf function to print out our result of who the
%criminal really is
statement = sprintf(formatSpec, sp);
end