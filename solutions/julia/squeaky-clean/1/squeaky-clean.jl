function transform(ch)
    
    greek_alphabet = collect('α':'ω')
    
    if ch == '-'
        ch = "_"
    elseif ch == ' '
        ch = ""
    elseif isuppercase(ch)
        ch = "-$(lowercase(ch))"
    elseif isnumeric(ch)
        ch = ""
    elseif ch in greek_alphabet
        ch = "?"
    else 
        string(ch)
    end

end

function clean(str)
    char_vector = collect(str)
    transform_vector = [transform(ch) for ch in char_vector]
    return join(transform_vector,"")
end




