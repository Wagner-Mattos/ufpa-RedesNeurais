%01/02/2016
%18/01/2016
% X e D contem os padroes de entrada
% X : entradas
% D : saidas desejadas ou alvos
% X = [0;
%      0;
%      1];
% D = [0;
%      1;
%      1];
function [Y,E,RMSE] = nossopolyval(x,d,A)
[nl,nc] = size(A);  % A tem n+1 componentes.
                    % n é a ordem do polinômio
X = [];
for i = 1:nc-1
    X = [X x.^i];
end
[nl,nc] = size(X);
Xa = [X ones(nl,1)]; % X aumentada
%At = (inv(Xa'*Xa)*Xa')*D;  % transposta de A
% At = pinv(Xa)*D;
% A = At';
%respostas do modelo
Y = Xa*A'; % Y = Xa*A'
E = d - Y;
[nl,nc] = size(E); %numero de saidas
vete = reshape(E,nl*nc,1);
EQM = 1/(nl*nc)*(vete'*vete);
RMSE = sqrt(EQM);
end




