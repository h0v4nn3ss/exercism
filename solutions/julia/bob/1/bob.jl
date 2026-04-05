function bob(stimulus)
    if isempty(strip(stimulus))
        "Fine. Be that way!"
    elseif endswith(strip(stimulus), "?")
        if all(isuppercase, filter(isletter, stimulus)) && any(isletter, stimulus)
            "Calm down, I know what I'm doing!"   
        else
            "Sure."
        end
    elseif all(isuppercase, filter(isletter, stimulus)) && any(isletter, stimulus)
        "Whoa, chill out!"
    else 
        "Whatever." 
    end
end

