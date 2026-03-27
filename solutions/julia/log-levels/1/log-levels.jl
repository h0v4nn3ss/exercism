function message(msg)
    strip(split(msg, ":")[2])
end

function log_level(msg)
    raw_level = split(msg, ":")[1]
    upper_level = replace(raw_level, "["=>"", "]"=>"")
    lower_level = lowercase(upper_level)
    return lower_level
end

function reformat(msg)
    message(msg) * " (" * log_level(msg) * ")"
end
