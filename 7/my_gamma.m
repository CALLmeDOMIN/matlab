function result = my_gamma(z)
    result = [];
    for i=1:1:length(z)
        b = 1;
    
        for n=1:1:1000000
            b = b * ((1 + 1/n)^z(i) / (1 + z(i)/n));
        end
        b = (1/z(i)) * b;
        result(i) = b;
    end
end

