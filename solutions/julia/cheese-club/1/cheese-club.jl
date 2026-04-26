function all_15(ratings)
    mapreduce(x-> x == 1 || x == 5, &, ratings)
end

function emphatics(customers)
    filter(x -> all_15(last(x)), customers) 
end

function tobinary(ratings)
    map(x -> x == 5 ? 1 : 0, ratings)
end

function tobinarymatrix(ratings)
    mapreduce(x -> transpose(tobinary(x)), vcat, ratings)
end

