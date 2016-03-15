% Esercizio 4.10
%


e= inline ('((2* pi ).^( n +1))./( factorial (n +1)) ');
n=0;
while (e(n)>= 10^ -6)
n=n+1;
end
fprintf ('e(%d) = %6.3 e\n', n, e(n));
