function rationalize(successes, trials)
    return [(a//b) for (a, b) in zip(successes, trials)]
end

function probabilities(successes, trials)
    return float(rationalize(successes,trials))
end

function checkmean(successes, trials)
    real_prob_mean = sum(probabilities(successes, trials))/length(probabilities(successes, trials))
    racional_prob_mean = sum(rationalize(successes, trials))/length(rationalize(successes, trials))
    if isequal(real_prob_mean, float(racional_prob_mean))
        return true
    else
        return racional_prob_mean
    end
end

function checkprob(successes, trials)
    real_prob_prod = prod(probabilities(successes, trials))
    racional_prob_prod = prod(rationalize(successes, trials))
    if isequal(real_prob_prod, float(racional_prob_prod))
        return true
    else
        return racional_prob_prod
    end
end



