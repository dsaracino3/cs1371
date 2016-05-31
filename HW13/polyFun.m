function polyFun (x, y, pow)
xi = linspace(min(x), max(x), 200);
coeff = polyfit(x,y,pow);
yi = polyval(coeff, xi);
subplot(1,3,1);
hold on;
plot(x,y, 'g-');
plot(xi, yi, 'b-')
title('Original Data');
xlabel('x axis');
ylabel('y axis');
hold off;
dy = diff(y)./diff(x);
deriv = [length(coeff)-1:-1:1] .* coeff(1:end-1);
divyi = polyval(deriv, xi);
subplot(1,3,2);
hold on;
plot(xi, divyi, 'g-');
plot(x(1:end-1), dy, 'b-');
title('Derivative Data');
xlabel('x axis');
ylabel('y axis');
hold off;
inty = cumtrapz(x, y);
int = coeff./[length(coeff):-1:1];
int = [int 0];
intyi = polyval(int, xi);
subplot(1,3,3);
hold on;
plot(xi, intyi, 'g-');
plot(x, inty, 'b-');
title('Integral Data');
xlabel('x axis');
ylabel('y axis');
hold off;
end