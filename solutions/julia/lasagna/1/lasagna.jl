# Define the `expected_bake_time` constant`
const expected_bake_time = 60 # in minutes

# Define the `preparation_time(layers)` function.
function preparation_time(layers)
    return (layers * 2) 
end

# Define the `remaining_time(time_in_oven)` function.
remaining_time(time_in_oven) = expected_bake_time - time_in_oven

# Define the `total_working_time(layers, time_in_oven)` function.
function total_working_time(layers, time_in_oven)
    return (preparation_time(layers) + time_in_oven)
end
