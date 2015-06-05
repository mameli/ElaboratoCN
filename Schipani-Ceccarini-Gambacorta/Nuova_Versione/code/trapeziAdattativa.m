function [result, points] = trapeziAdattativa(fun, a, b, tol)
    [result, points] = trapeziAdattativaRicorsiva(fun, a, b, tol, 3);
end

function [result, points] = trapeziAdattativaRicorsiva(fun, a, b, tol, points)
    h = (b-a)/2;
    m = (a+b)/2;
    int1 = h*(feval(fun, a) + feval(fun, b));
    result = int1/2 + h*feval(fun, m);
    err = abs(result-int1)/3;
    if err>tol
        [rsx, pointsx] = trapeziAdattativaRicorsiva(fun, a, m, tol/2, 1);
        [rdx, pointdx] = trapeziAdattativaRicorsiva(fun, m, b, tol/2, 1);
        result = rsx+rdx;
        points = points+pointsx+pointdx;
    end
end