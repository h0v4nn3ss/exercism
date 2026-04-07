using Random

random_planet() = rand(['D', 'H', 'J', 'K', 'L', 'M', 'N', 'R', 'T', 'Y'])

random_ship_registry_number() = "NCC-$(rand(1000:9999))"

random_stardate() = rand(41000.0:42000.0)

random_stardate_v2() = rand(41000.0:0.1:42000.0)

function pick_starships(starships, number_needed)
    Random.shuffle!(starships)
    return starships[1:number_needed]
end

