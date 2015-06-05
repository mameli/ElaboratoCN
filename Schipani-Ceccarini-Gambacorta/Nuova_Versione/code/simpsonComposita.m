

function [result] = simpsonComposita(fun, a, b, n)
    h = (b-a)/n;
    result = fun(a)-fun(b);
    for i=1:n/2
        result = result + 4*fun(a+(2*i-1)*h)+2*fun((a+2*i*h));
    end
    result = result*(h/3);
end