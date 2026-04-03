
# function to get the wagons id as a vector
get_vector_of_wagons(args...) = collect(Int64, args)

function fix_vector_of_wagons(each_wagons_id, missing_wagons)
    first, second, locomotive, rest... = each_wagons_id
    return [locomotive, missing_wagons..., rest..., first, second]
end

function add_missing_stops(route, stops...)
    city_names = [p.second for p in stops]
    return merge(route, Dict("stops"=>city_names))
end

function extend_route_information(route; more_route_information...)
    return merge(route, more_route_information)
end

