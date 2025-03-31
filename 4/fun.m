function [alpha, beta, gamma] = fun(a, b, c)
    % nargin % Number of input arguments
    % nargout % Number of output arguments

    if a + b <= c || a + c <= b || b + c <= a
        error('Invalid triangle sides');
    end

    alpha = acosd((b^2 + c^2 - a^2) / (2 * b * c));
    beta = acosd((a^2 + c^2 - b^2) / (2 * a * c));
    gamma = acosd((a^2 + b^2 - c^2) / (2 * a * b));
end