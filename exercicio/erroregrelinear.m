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
function [Y,E,RMSE] = erroregrelinear(X,D,A)
[nl,nc] = size(X);
Xa = [X ones(nl,1)]; % X aumentada
%At = (inv(Xa'*Xa)*Xa')*D;  % transposta de A
% At = pinv(Xa)*D;
% A = At';
%respostas do modelo
Y = Xa*A'; % Y = Xa*A'
E = D - Y;
[nl,nc] = size(E); %numero de saidas
vete = reshape(E,nl*nc,1);
EQM = 1/(nl*nc)*(vete'*vete);
RMSE = sqrt(EQM);
end




