function get_coordinate(line)
    dump(line)
    return line[2]
end

function convert_coordinate(coordinate)
    return Tuple(coordinate)
end

function compare_records(azara_record, rui_record)
    azara_coordinate = get_coordinate(azara_record)
    azara_coordinate_tuple = Tuple(azara_coordinate)
    dump(rui_record)
    rui_coordinate_tuple = rui_record[2]
    return azara_coordinate_tuple == rui_coordinate_tuple
end

function create_record(azara_record, rui_record)
    if compare_records(azara_record, rui_record)
        treasure, coordinate = azara_record
        location, _, quadrant = rui_record
        return (coordinate, location, quadrant, treasure)
    else
        return ()
    end
end