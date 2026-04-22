function humiditycheck(pct_humidity)
    
    ex = ErrorException("humidity level check failed: $pct_humidity%")
    
    if pct_humidity >= 80 
        throw(ex)
    end

    @info "humidity level check passed: $pct_humidity%"

end

temperaturecheck(temperature::Nothing) = throw(ArgumentError("sensor is broken"))
temperaturecheck(temperature::Int64) =
    temperature > 500 ?
    throw(DomainError(temperature, "overheating detected: $temperature °C")) :
    @info "temperature check passed: $temperature °C"
    
struct MachineError <: Exception end

function machinemonitor(pct_humidity, temperature)
    failed = false

    try
        humiditycheck(pct_humidity)
    catch problem
        if problem isa ErrorException
            @error "humidity level check failed: $pct_humidity%"
            failed = true
        else
            rethrow()
        end
    end

    try
        temperaturecheck(temperature)
    catch problem
        if problem isa ArgumentError
            @warn "sensor is broken"
            failed = true
        elseif problem isa DomainError
            @error "overheating detected: $temperature °C"
            failed = true
        else
            rethrow()
        end
    end

    if failed
        throw(MachineError())
    end


end