clothingitem(categories, qualities) = Dict(categories[i] => qualities[i] for i in eachindex(categories))

get_combinations(tops, bottoms) = [(top, bottom) for top in tops, bottom in bottoms]

get_prices(combos::Vector) = [combos[i][1]["price"] + combos[i][2]["price"] for i in eachindex(combos)]

get_prices(combos::Matrix) = [combos[i,j][1]["price"] + combos[i,j][2]["price"] for i in 1:size(combos,1), j in 1:size(combos,1)]

filter_clashing(combos) = [combos[i] for i in eachindex(combos) if combos[i][1]["base_color"] != combos[i][2]["base_color"]]

