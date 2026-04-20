
# Define an abstract type Pet
abstract type Pet end

# Define concrete types Dog and Cat
struct Dog <: Pet
    name::String
end

struct Cat <: Pet
    name::String
end

# Define a name() function
name(p::Dog) = p.name
name(p::Cat) = p.name

# buddy = Dog("Buddy")
# sadie = Dog("Sadie")
# minka = Cat("Minka")
# felix = Cat("Felix")

# println(buddy, sadie, minka, felix)

# Define multiple methods for meets(a, b)
# Only the first one is stubbed

meets(a::Dog, b::Dog) = "sniffs"
meets(a::Dog, b::Cat) = "chases"
meets(a::Cat, b::Dog) = "hisses"
meets(a::Cat, b::Cat) = "slinks"

# Implement the encounter(a, b) function

encounter(a, b) = "$(name(a)) meets $(name(b)) and $(meets(a,b))."

# Define three fallback methods for meets(a, b)
# Stubs are not provided for these, but look at the hints if necessary
meets(a::Pet, b::Pet) = "is cautious"
meets(a::Pet, b::Any) = "runs away"
meets(a::Any, b::Any) = "nothing happens"


