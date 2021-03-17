
funxy = @(s,t) 2.*s - sqrt(s).*t.^2; % confirm: fine with x,y

x = linspace(0,5,100);
y = linspace(-3,3,200);

result = zeros(length(x),length(y));

for xi=1:length(x)
%     result(xi,:) = funxy(x(xi),y);
    for yi=1:length(y)
        result(xi,yi) = funxy(x(xi),y(yi));
    end
end

[Y,X] = meshgrid(y,x);
result = funxy(X,Y);

clf
contourf(x,y,result',40,'linecolor','none')










