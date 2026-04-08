function print_name_badge(id, name, department)

    (ismissing(id) ? "" : "[$id] - ") * name * 
    (department === nothing ? " - OWNER" : " - $(uppercase(department))")

end

function salaries_no_id(ids, salaries)
    
    sum(salary for (id, salary) in zip(ids, salaries) if ismissing(id), init=0)

end



 
