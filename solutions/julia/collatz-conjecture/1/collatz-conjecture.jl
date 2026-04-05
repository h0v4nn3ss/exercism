function collatz_steps(n)

    n <= 0 && throw(DomainError(n, "n must be a positive integer"))

    even_rule(n) = n//2
    odd_rule(n) = n * 3 + 1
    is_even(n) = n % 2 == 0
    
    counter = 0
    while n != 1
        if is_even(n)
            n = even_rule(n)
        else
            n = odd_rule(n)
        end
        counter +=1
    end
    
    return counter
end


