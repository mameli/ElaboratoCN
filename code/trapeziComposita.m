% int = trapeziComposita(f, a, b, n)
% Formula dei trapezi composita per l'approssimazione dell'integrale
% definito di una funzione.
%
% Input:
%   -funzione: la funzione di cui si vuol calcolare l'integrale;
%   -a: estremo sinistro dell'intervallo di integrazione;
%   -b: estremo destro dell'intervallo di integrazione;
%   -n: numero di sottointervalli sui quali applicare la formula dei
%   trapezi semplice.
% Output:
%   -int: l'approssimazione dell'integrale definito della funzione.


function [int] = trapeziComposita(funzione, a, b, n)
    h = (b-a)/n;
    int = 0;
    for i=1:n-1
        int = int+funzione(a+i*h);
    end
    int = (h/2)*(2*int + f(a) + f(b));
end