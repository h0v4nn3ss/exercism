new_car <- function(speed, battery_drain) {
  list(
    speed = speed,
    battery_drain = battery_drain,
    battery = 100,
    distance_traveled = 0
  )
}

new_track <- function(track_length) {
  list(
    track_length = track_length
  )
}

battery_drained <- function(car) {
  if(car$battery < car$battery_drain) {
    return (TRUE)
  }
  return (FALSE)
}

drive <- function(car) {
  if(car$battery >= car$battery_drain) {
    car$battery <- car$battery - car$battery_drain
    car$distance_traveled <- car$distance_traveled + car$speed
  }
  car
}

can_finish <- function(car, track) {
  moves <- car$battery %/% car$battery_drain
  distance_left <- moves * car$speed

  if(distance_left < track) {
    return (FALSE)
  }
  return (TRUE)
}

store_track <- function(car, track, name) {
  car$battery <- 100
  car$distance_traveled <- 0

  track$complete <- can_finish(car, track)
  car[[name]] <- track
  return(car)
}
