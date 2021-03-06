% random = randR(M, N, A, B)
% Crea una matrice MxN di valori random contenuti nell'intervallo
% [A,B].
%
% Input:
%   -M: numero di righe della matrice;
%   -N: numero di colonne della matrice;
%   -A: estremo sinistro dell'intervallo;
%   -B: estremo destro dell'intervallo.
% Output:
%   -random: la matrice di valori random.
%


function [random] = randR(M, N, A, B)
    random = rand(M, N)*(B-A) +A;
end
