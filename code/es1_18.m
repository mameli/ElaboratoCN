% Esercizio 1.18
%


a=0.1
b=0.099999999999

k=(abs(a)+abs(-b))/abs(a-b)
ex = eps/2
ey = k*ex
c=ceil(-log10(abs(ey)))
