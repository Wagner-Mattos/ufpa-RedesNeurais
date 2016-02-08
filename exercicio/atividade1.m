% chama nossopolyfit
dadosatividade1; %dados de treinamento para ajuste do modelo 
n = 2;   % ordem do polinomio  
[A,Y,E,RMSE] = nossopolyfit(x,d,n);  % modelo polinomial de ordem n
% y(x) = A(1)x^n + A(2)x^(n-1) + ... + A(n)x^1 + A(n+1)
figure(1)
plot(x,d,'.b',x,Y,'.r')
xlabel('x')
title('modelo polinomial: observações (azul) versus predição (vermelho')


