function varargout = fun3(varargin)
    if mod(nargin, 2) ~= 0
        error('Number of input arguments must be even');
    end

    varargout = cell(1, nargin/2);

    for i = 1:2:nargin
        A = varargin{i};
        b = varargin{i+1};
        varargout{(i + 1)/2} = A\b;
    end
end

% [x1] = fun3(eye(2), [1; 2])
% [x1] = fun3([1, 2; 3, 4], [4; 5])