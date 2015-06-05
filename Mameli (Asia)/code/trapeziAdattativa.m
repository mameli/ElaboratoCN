% [int, pt] = trapeziAdattativaRicorsiva(funzione, a, b, tol, pt)
% Formula dei trapezi adattativa per l'approssimazione dell'integrale
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
%

function [int, pt] = trapeziAdattativa(funzione, a, b, tol)
    [int, pt] = trapeziAdattativaRicorsiva(funzione, a, b, tol, 3);
end

function [int, pt] = trapeziAdattativaRicorsiva(funzione, a, b, tol, pt)
    h = (b-a)/2;
    m = (a+b)/2;
    int1 = h*(feval(funzione, a) + feval(funzione, b));
    int = int1/2 + h*feval(funzione, m);
    err = abs(int-int1)/3;
    if err>tol
        [intSx, ptSx] = trapeziAdattativaRicorsiva(funzione, a, m, tol/2, 1);
        [intDx, ptDx] = trapeziAdattativaRicorsiva(funzione, m, b, tol/2, 1);
        int = intSx+intDx;
        pt = pt+ptSx+ptDx;
    end
end