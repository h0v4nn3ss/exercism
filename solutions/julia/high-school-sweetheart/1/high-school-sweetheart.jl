function cleanupname(name)
    name |> (r -> replace(r, "-"=>" ")) |> strip
end

function firstletter(name)
    name |> cleanupname |> first |> string
end

function initial(name)
    name |> firstletter |> uppercase |> (n -> n * ".")
end

function couple(name1, name2)
    "❤ $(initial(name1))  +  $(initial(name2)) ❤"
end
