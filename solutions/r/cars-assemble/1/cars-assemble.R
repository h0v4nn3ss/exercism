success_rate <- function(speed) {

  if (speed == 0) return (0)
  if (speed >= 1 && speed <= 4) return (1)
  if (speed >= 5 && speed <= 8) return (0.9)
  if (speed == 9) return (0.8)
  if (speed == 10) return (0.77)
}

production_rate_per_hour <- function(speed) {
  speed * 221 * success_rate(speed)
}

working_items_per_minute <- function(speed) {
  production_rate_per_hour(speed) %/% 60
}
