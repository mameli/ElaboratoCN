% y = CordeNonLin( f, J, y, tol )
% Risoluzione di sistemi non lineari con il metodo delle corde.
%
% Input :
%   -f: funzione;
%   -J: Jacobiano;
%   -y: punto iniziale;
%   -tol: tolleranza.
%


function [ y ] = CordeNonLin ( f, J, y, tol )

app =[y (1); y (2)];
while ( norm (app)>tol)
app = J\(- feval (f,y));
y (3:4) = y (1:2);
y (1:2) = y (1:2)+ app;
end
