struct Fiberator
    n::Int
end

function Base.iterate(f::Fiberator)
    iterate(f, (f.n, 1, 1))
end

function Base.iterate(f::Fiberator, state)
    remaining, previous, current = state

    if remaining <= 0
        return nothing
    end

    return (previous, (remaining - 1, current, previous + current))
end

Base.length(f::Fiberator) = f.n
Base.IteratorSize(::Type{Fiberator}) = Base.HasLength()
Base.eltype(::Type{Fiberator}) = Int
Base.IteratorEltype(::Type{Fiberator}) = Base.HasEltype()
