function out = varInfo (in)
%fucntion to output a string with information regarding the input
c = class(in);
%variable holding class information; also taken before num2str, because...
in = num2str(in);
%in case someone enters a number, I can change the class without changing
%the value at all
formatSpec = 'This variable is of class %s and has a value of ''%s''.';
%using formatSpec to allow me to use the sprintf function for formatting
out = sprintf(formatSpec, c, in);
end