function demote(n)
    if n isa Signed
        Int8(n)
    elseif n isa Float64
        UInt8(ceil(n))
    else
        throw(MethodError(demote, (n,)))
    end
end

function preprocess(coll)
    if coll isa Vector
        coll |> n -> demote.(n) |> reverse
    elseif coll isa Set
        sort([demote.(coll)...], rev=true)
    else
        throw(MethodError(preprocess, (coll,)))
    end
end

