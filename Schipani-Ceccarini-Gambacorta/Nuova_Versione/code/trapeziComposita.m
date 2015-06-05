 
function [result] = trapeziComposita(fun, a, b, n)
    h = (b-a)/n;
    result = 0;
    for i=1:n-1
        result = result+fun(a+i*h);
    end
    result = (h/2)*(2*result + fun(a) + fun(b));
end