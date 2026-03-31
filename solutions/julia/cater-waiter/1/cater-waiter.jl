function clean_ingredients(dish_name, dish_ingredients)
    tuple(dish_name, Set(dish_ingredients))
end

function check_drinks(drink_name, drink_ingredients)
    if isdisjoint(Set(drink_ingredients), ALCOHOLS)
        return "$drink_name Mocktail"
    else
        return "$drink_name Cocktail"
    end
end

function categorize_dish(dish_name, dish_ingredients)
    category_names = ["VEGAN", "VEGETARIAN", "PALEO", "KETO", "OMNIVORE"]
    category_values = [VEGAN, VEGETARIAN, PALEO, KETO, OMNIVORE]
        for (name, value) in zip(category_names, category_values)
            if issubset(Set(dish_ingredients), value)
                return "$dish_name: $name"
            end
        end
end

function tag_special_ingredients(dish)
    return (dish[1], intersect(Set(dish[2]), SPECIAL_INGREDIENTS))
end

function compile_ingredients(dishes)
    ingredients = []
    for i in eachindex(dishes)
        append!(ingredients, dishes[i])
    end
    return Set(ingredients)
end

function separate_appetizers(dishes, appetizers)
    return collect(setdiff(Set(dishes), Set(appetizers)))
end

function singleton_ingredients(dishes, intersection)
    all_ingridients = union(dishes...)
    return symdiff(all_ingridients, intersection)
end
