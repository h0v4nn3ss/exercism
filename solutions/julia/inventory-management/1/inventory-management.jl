function create_inventory(items)
    inventory = Dict()
    for item in items
        if !haskey(inventory, item)
            inventory[item] = 1 
        else 
            inventory[item] += 1
        end
    end 
    return inventory
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
            inventory[item] -= 1
        else
            continue
        end
        if inventory[item] <= 0 
            inventory[item] = 0
        end
    end 
    return inventory
end

function remove_item(inventory, item)
    delete!(inventory, item)
end

function list_inventory(inventory)
    filtered_vector = [item for item in inventory if item.second > 0]
    return sort(filtered_vector, by = x -> x.first)
end