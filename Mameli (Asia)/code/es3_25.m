% Esercizio 3.25
%


format short e
A=eye(10)+100*[ zeros(1, 10); eye(9) zeros(1, 9)']
inv(A)
cond (A)
