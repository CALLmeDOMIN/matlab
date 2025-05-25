function result_1 = my_zeta(z)
    warning off;
    max = 100;
    result_1 = 0;
    for n=0:1:max
        result_2 = 0;
        for k=0:1:n
            result_2 = result_2 + (-1)^k * nchoosek(n,k) * (k+1)^(-z);
        end
        result_1 = result_1 + result_2/(2^(n+1));
    end
    result_1 = result_1/(1-(2^(1-z)));
end

