function create_inventory(items)
    add_items(Dict(), items)
end

function add_items(inventory, items)
      for item in items
        if !haskey(inventory, item)
            inventory[item] = 1 
        else 
            inventory[item] += 1
        end
    end 
    return inventory
end

function decrement_items(inventory, items)
     for item in items
        if haskey(inventory, item)
            inventory[item] = max(inventory[item] - 1, 0)
        end
    end 
    return inventory
end

function remove_item(inventory, item)
    if !(haskey(inventory, item))
        return inventory
    else 
        return delete!(inventory, item)
    end
end

function list_inventory(inventory)
    filtered_vector = [item for item in inventory if item.second > 0]
    return sort(filtered_vector, by = x -> x.first)
end