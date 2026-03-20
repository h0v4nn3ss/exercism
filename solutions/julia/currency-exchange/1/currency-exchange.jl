function exchange_money(budget, exchange_rate)
    round(budget / exchange_rate, digits=2)
end

function get_change(budget, exchanging_value)
    budget - exchanging_value
end

function get_value_of_bills(denomination, number_of_bills)
    trunc(denomination * number_of_bills)
end

function get_number_of_bills(amount, denomination)
    floor(Int, (amount / denomination))
end

function get_leftover_of_bills(amount, denomination)
    amount % denomination
end

function exchangeable_value(budget, exchange_rate, spread, denomination)
    effective_rate = exchange_rate * (1 + spread/100)
    raw_amount = exchange_money(budget, effective_rate)
    num_bills = get_number_of_bills(raw_amount, denomination)
    exchangeable = get_value_of_bills(denomination, num_bills)
    return exchangeable
end
