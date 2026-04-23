import Dates

function schedule_appointment(appointment::String)
    Dates.DateTime(appointment, "m/d/yyyy HH:MM:SS")
end

function has_passed(appointment::DateTime)
    appointment < Dates.now()
end

function is_afternoon_appointment(appointment::DateTime)
    12 <= Dates.hour(appointment) < 18
end

function describe(appointment::DateTime)
    "You have an appointment on $(Dates.format(Dates.Date(appointment), "E, U d, yyyy")) at $(Dates.format(Dates.Time(appointment), "HH:MM"))"
end

function anniversary_date()
   Dates.Date(Dates.year(Dates.now()),09,15) 
end