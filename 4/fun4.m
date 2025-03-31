function napis = fun4(napis, a, b)

    if nargin == 2
        napis(napis==a) = '';
    end
    if nargin == 3 
        napis(napis==a) = b;
    end
    
end