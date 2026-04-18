# define the Coord type
struct Coord
    x::UInt16
    y::UInt16
end
# define the Plot keyword type
@kwdef struct Plot
    bottom_left::Coord
    top_right::Coord
end

function is_claim_staked(claim::Plot, register::Set{Plot})
    claim in register
end

function stake_claim!(claim::Plot, register::Set{Plot})
    if !(claim in register)
        push!(register, claim)
        return true
    end
    return false
end

function get_longest_side(claim::Plot)
    horizontal = claim.top_right.x - claim.bottom_left.x
    vertical = claim.top_right.y - claim.bottom_left.y
    max(horizontal, vertical)
end

function get_claim_with_longest_side(register::Set{Plot})
    let longest = maximum(get_longest_side, register)
        Set(filter(p -> get_longest_side(p) == longest, register))
    end
end