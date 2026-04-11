function rotate(k::Integer, c::Char)
    base = islowercase(c) ? 'a' : 'A'
    isletter(c) ? (c - base + k) % 26 + base : c
end

function rotate(k, str::AbstractString)
     map(c->rotate(k,c), str)
end