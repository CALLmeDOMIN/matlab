function varargout = fun2(varargin) % varargout is a variable-length output argument list
                                    % varargin is a variable-length input argument list
    ile = zeros(1, nargin);
    for i = 1:nargin
        ile(i) = numel(varargin{i}); % numel - number of elements in an array
    end

    [~, index] = sort(ile);
    varargout = varargin(index);
end