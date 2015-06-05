

function [result, points] = simpsonAdattativa(fun, a, b, tol)
    [result, points] = simpsonAdattativaRicorsiva(fun, a, b, tol, 5);
end

function [result, points] = simpsonAdattativaRicorsiva(fun, a, b, tol, points)
    h = (b-a)/6;
    m = (a+b)/2;
    m1 = (a+m)/2;
    m2 = (m+b)/2;
    int1 = h*(feval(fun, a) +4*feval(fun, m) + feval(fun, b));
    result = int1/2 + h*(2*feval(fun, m1) + 2*feval(fun, m2) -feval(fun, m));
    err = abs(result-int1)/15;
    if err>tol
        [rsx, pointsx] = simpsonAdattativaRicorsiva(fun, a, m, tol/2, 1);
        [rdx, pointdx] = simpsonAdattativaRicorsiva(fun, m, b, tol/2, 1);
        result = rsx+rdx;
        points = points+points+pointdx;
    end
end