% [int, pt] = simpsonAdattativa(funzione, a, b, tol)
% Formula di Simpson adattativa per l'approssimazione dell'integrale
% definito di una funzione.
%
% Input:
%   -funzione: la funzione di cui si vuol calcolare l'integrale;
%   -a: estremo sinistro dell'intervallo di integrazione;
%   -b: estremo destro dell'intervallo di integrazione;
%   -tol: la tolleranza entro la quale si richiede debba rientrare la
%   soluzione approssimata.
% Output:
%   -int: l'approssimazione dell'integrale definito della funzione;
%   -pt: numero di punti generati ricorsivamente.


function [int, pt] = simpsonAdattativa(funzione, a, b, tol)
    [int, pt] = simpsonAdattativaRicorsiva(funzione, a, b, tol, 5);
end

function [int, pt] = simpsonAdattativaRicorsiva(funzione, a, b, tol, pt)
    h = (b-a)/6;
    m = (a+b)/2;
    m1 = (a+m)/2;
    m2 = (m+b)/2;
    int1 = h*(feval(funzione, a) +4*feval(funzione, m) + feval(funzione, b));
    int = int1/2 + h*(2*feval(funzione, m1) + 2*feval(funzione, m2) -feval(funzione, m));
    err = abs(int-int1)/15;
    if err>tol
        [intSx, ptSx] = simpsonAdattativaRicorsiva(funzione, a, m, tol/2, 1);
        [intDx, ptDx] = simpsonAdattativaRicorsiva(funzione, m, b, tol/2, 1);
        int = intSx+intDx;
        pt = pt+ptSx+ptDx;
    end
end