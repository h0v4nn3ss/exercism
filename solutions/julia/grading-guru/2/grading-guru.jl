demote(n::Signed) = Int8(n)
demote(n::Float64) = UInt8(ceil(n))

preprocess(coll::Vector) = coll |> n -> demote.(n) |> reverse
preprocess(coll::Set) = sort([demote.(coll)...], rev=true)
