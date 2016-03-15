% b = triangolareInfRiga(A, b)
% Metodo per la risoluzione di sistemi lineari triangolari inferiori,
% accedendo agli elementi per riga.
%
% Input:
%   -A: la matrice dei coefficienti;
%   -b: vettore dei termini noti.
% Output:
%   -b: vettore delle soluzioni.
%


function [b] = triangolareInfRiga(A, b)
    for i=1:length(A)
        for j=1:i-1
            b(i)=b(i)-A(i,j)*b(j);
        end
        if A(i,i)==0
            error('La matrice � singolare!')
        else
            b(i)=b(i)/A(i,i);
        end
    end
