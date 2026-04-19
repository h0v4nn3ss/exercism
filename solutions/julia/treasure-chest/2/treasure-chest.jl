# define the TreasureChest{T} type
struct TreasureChest{T}
    password::String
    treasure::T
end


function get_treasure(password_attempt, chest)
    if password_attempt == chest.password
        return chest.treasure
    end
    return nothing

end 

function multiply_treasure(multiplier, chest)
    thing = chest.treasure
    thing_vector = []
    while multiplier > 0
        push!(thing_vector, thing) 
        multiplier -= 1
    end
    return TreasureChest{Vector{String}}(chest.password, thing_vector) 
end

