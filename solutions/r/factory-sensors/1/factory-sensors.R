check_humidity_level <- function(pct_humidity) {
  stopifnot(pct_humidity <= 70)
  message("humidity test passed")
  TRUE
}

report_overheating <- function(temperature) {
  if(is.null(temperature)) {
    stop("Sensor Broken")
  } else if(temperature > 600) {
    stop("Overheating: ", temperature, "°C") 
  } else if(temperature > 500) {
    warning("Risk of overheating: ", temperature, "°C")
    return(F)
  }
  message("Temperature check passed: ", temperature, "°C")
  return(T)
}

monitor_the_machine <- function(pct_humidity, temperature) {
  c <- suppressWarnings(try(check_humidity_level(pct_humidity)))
  r <- suppressWarnings(try(report_overheating(temperature)))
  if(c && r) return(message("All OK"))
}
