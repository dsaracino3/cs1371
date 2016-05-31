function y = f (x)
%function wihin a function to define the g(x)
    function g = gFunc (x)
        g = x.*abs(x);
    end
%function to define f(x) also using above function
y = (1.17.*sqrt(1+x.^.9) + sinh(x.^2 - 4))./(1.6487.*exp(x.^2 - gFunc(x)));
end