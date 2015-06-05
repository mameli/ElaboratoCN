% int = simpsonComposita(funzione, a, b, n)
% Formula di Simpson composita per l'approssimazione dell'integrale
% definito di una funzione.
%
% Input:
%   -funzione: la funzione di cui si vuol calcolare l'integrale;
%   -a: estremo sinistro dell'intervallo di integrazione;
%   -b: estremo destro dell'intervallo di integrazione;
%   -n: numero, pari, di sottointervalli sui quali applicare la formula
%   di Simpson semplice.
% Output:
%   -int: l'approssimazione dell'integrale definito della funzione.

function [int] = simpsonComposita(funzione, a, b, n)
    h = (b-a)/n;
    int = funzione(a)-funzione(b);
    for i=1:n/2
        int = int + 4*funzione(a+(2*i-1)*h)+2*funzione((a+2*i*h));
    end
    int = int*(h/3);
end