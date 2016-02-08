%01/02/2016
function [A,Y,E,RMSE] = nossopolyfit(x,d,n)
x = x(:);  %converte em vetor coluna
d = d(:);
X = [];
for i = 1:n
    X = [X x.^i];
end
[A,Y,E,RMSE]=regrelinear(X,d);  % A contem n+1 coeficientes
end


