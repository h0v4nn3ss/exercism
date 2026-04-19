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
    # alternative
    # password_attempt == chest.password ? chest.treasure : nothing
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

# chest = TreasureChest{String}("password", "gold")
# chest = TreasureChest{Vector{String}}("password", ["gold","gold","gold"]) 
chest.treasure

# get_treasure("password", chest)
# get_treasure("wrong", chest)
# isnothing(get_treasure("wrong", chest))

# v = ["gold"]
# m = 3
# while m > 0
#     push!(v, v[1])
#     global m -= 1
# end
# println(v)

# multiply_treasure(3, chest)
