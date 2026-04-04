function score(x, y)
    c = sqrt(x^2+y^2)
    return c <= 1 ? 10 : c <= 5 ? 5 : c <= 10 ? 1 : 0 
end