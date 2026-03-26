function time_to_mix_juice(juice)
    if juice == "Pure Strawberry Joy"
        return 0.5
    elseif  juice in ("Energizer", "Green Garden")
        return 1.5
    elseif  juice == "Tropical Island"
        return 3
    elseif  juice == "All or Nothing"
        return 5
    else
        return 2.5
    end
end

function wedges_from_lime(size)
    if size == "small"
        return 6
    elseif size == "medium"
        return 8
    elseif size == "large"
        return 10
    end
end

function limes_to_cut(needed, limes)
    wedges_so_far = 0
    limes_cut = 0
    if needed == 0 || isempty(limes)
        return 0
    end
    for size in limes
        wedges = wedges_from_lime(size)
        wedges_so_far += wedges
        limes_cut += 1
        if wedges_so_far >= needed
            break
        end
    end
    return limes_cut
end

function order_times(orders)
    if isempty(orders)
        return []
    end
    times = []
    for order in orders
        time = time_to_mix_juice(order)
        push!(times, time)
    end
    return times
end

function remaining_orders(time_left, orders)
   for i in eachindex(orders)
        time = time_to_mix_juice(orders[i])
        if time_left > 0
            time_left -= time
        else
            return orders[i:end]
        end
    end
    return []
end



