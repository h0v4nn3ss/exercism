function z(x, y)
   complex(x, y)
end

function euler(r, θ)
    r * (cos(θ) + im * sin(θ))
end

function rotate(x, y, θ)
    z′ = z(x, y) * exp(im * θ)
    (real(z′), imag(z′))
end

function rdisplace(x, y, r)
    p = z(x, y)
    p′ = euler(abs(p) + r, angle(p))
    (real(p′), imag(p′))
end

function findsong(x, y, r, θ)
    x′, y′ = rotate(x, y, θ)
    rdisplace(x′, y′, r)
end

