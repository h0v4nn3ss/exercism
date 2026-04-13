function is_valid_command(msg)
    re = r"^cHatbot"i
    occursin(re, msg)
end

function remove_emoji(msg)
    re = r"emoji[0-9]{4}"
    replace(msg, re => "")
end

function check_phone_number(number)

    re = r"\(\+[0-9]{2}\) [0-9]{3}\-[0-9]{3}\-[0-9]{3}"
    valid_msg = "Thanks! You can now download me to your phone."
    not_valid_msg = "Oops, it seems like I can't reach out to $number"
    
    occursin(re, number) ? valid_msg : not_valid_msg

end

function getURL(msg)
    re = r"\w+\.\w+"
    matches = eachmatch(re, msg)
    isnothing(matches) ? [] : (m -> m.match).(matches)
end

function nice_to_meet_you(str)
    new_str = replace(str, "," => "")
    name = replace(new_str, r"(\w+) (?<agroup>\w+)" => s"\g<agroup> \1")

    "Nice to meet you, $name"

end