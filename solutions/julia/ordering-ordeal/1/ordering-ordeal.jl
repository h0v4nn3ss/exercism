function sortquantity!(qty)
    srtperm = sortperm(qty, rev=true)
    sort!(qty, rev=true)
    return srtperm
end

function sortcustomer(cust, srtperm)
    cust[srtperm]
end

function production_schedule!(cust, qty)
    srtperm = sortquantity!(qty)
    orderedcust = sortcustomer(cust, srtperm)
    invsrtperm = invperm(srtperm)
    return orderedcust, invsrtperm
end