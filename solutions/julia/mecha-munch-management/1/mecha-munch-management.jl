function additems!(cart, items)
    [cart[i]= get(cart, i, 0) + 1 for i in items] 
    cart
end

function update_recipes!(ideas, updates)
    merge!(ideas, updates)
end

function send_to_store(cart, aislecodes)
    sort([(aislecodes[k] => cart[k]) for k in keys(cart)])
end

function update_store_inventory!(inventory, cart)
    mergewith!(-, inventory, cart)
    Dict([kv for kv in inventory if kv.second == 0])
end

function reorder!(outofstock, stock)
    [outofstock[i] = get!(stock, i, 100) for i in keys(outofstock)]
    outofstock
end