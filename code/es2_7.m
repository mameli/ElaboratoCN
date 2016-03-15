% Esercizio 2.7
%


f = inline('x-cos(x)');
f1 = inline('1+sin(x)');
tolx = 10^-1;
while tolx>eps
    disp(' '), str = sprintf('Tolleranza %d', tolx); disp(str)
    disp('Newton: '), newton(f, f1, 0, 1000, tolx, 0, 0, 0);
    disp('Corde: '), corde(f, f1, 0, 1000, tolx, 0, 0, 0);
    disp('Secanti: '), secanti(f, f1, 0, 1000, tolx, 0, 0, 0);
    tolx = tolx/10;
    disp('Premere un tasto per continuare'), pause
end
