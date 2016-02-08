%01/02/2016
disp('Se voce invocou este script é porque seu');
disp('modelo está finalizado.');
disp('A matriz A de coeficientes deve estar carregada');
disp('no workspace.');
disp('Importante, você só pode calcular o erro de teste');
disp('uma única vez!');
op = input('continuar ? (1) ou sair ? (0) :  ');
switch op
    case 0
        return;
    case 1
        dadosatividade1teste; %conjunto de teste
        [Yt,Et,RMSEt] = nossopolyval(xt,dt,A);  %saida,erro para o conjunto de teste
        figure(2)
        plot(xt,dt,'.b',xt,Yt,'.r')
end
