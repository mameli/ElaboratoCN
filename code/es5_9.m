% Esercizio 5.9
%


f = inline (' -2*x^( -3)* cos(x^ -2) ');

fprintf ('\n\ tFormula composita dei trapezi \n')
for n =1000:1000:10000
	I = TrapeziComposita (f, 1/2 , 100 , n, false );
	fprintf ('n = %d \t I = %5.4 e \t E = %5.4 e\n', n, I, abs(I -( sin (10^ -4) - sin (4))));
end
fprintf ('\n\n\ tFormula dei trapezi adattativa \n')
for i =1:4
	tol = 10^ -i;
	[I, p] = TrapeziAdattativa (f, 1/2 , 100 , tol , false );
	fprintf ('tol = %1.1 e \t I = %5.4 e \t E = %5.4 e \t punti = %d\n', tol , I, abs(I -( sin (10^ -4) - sin (4))) , p);
end
