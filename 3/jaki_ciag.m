function c = jaki_ciag(w)
    c="";
    if all(w(2) - w(1) == diff(w)) % diff - difference between consecutive elements
                                % all - returns true if all elements are true
        c = "A";
    end
    if all(w(2) / w(1) == w(2:end) ./ w(1:end-1))
        c = c + "G";
    end
    if isempty(c)
        c = "Z";
    end
end