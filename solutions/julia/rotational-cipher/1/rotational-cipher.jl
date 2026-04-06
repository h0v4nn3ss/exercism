function rotate(k, ch::Char)
    k = mod(k, 26)

    if islowercase(ch)
        return Char((Int(ch) - Int('a') + k) % 26 + Int('a'))
    elseif isuppercase(ch)
        return Char((Int(ch) - Int('A') + k) % 26 + Int('A'))
    else
        return ch
    end
end

function rotate(k, str::AbstractString)
    k = mod(k, 26)
    return join(rotate(k, ch) for ch in str)
end