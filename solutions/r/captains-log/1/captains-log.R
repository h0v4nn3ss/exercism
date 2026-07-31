library(stringr)

random_planet_class <- function(number_needed) {
  planet_class <- c("D", "H", "J", "K", "L", "M", "N", "R", "T", "Y")
  sample(planet_class, number_needed, replace = TRUE)
}

random_ship_registry_number <- function() {
  preffix <- "NCC-"
  paste0(preffix, str_flatten(sample(1000:9999, 1)))
}

shuffle_starships <- function(starships) {
  sample(starships)
}

random_stardate <- function() {
  runif(1, min = 41000.0 , max = 42000.0)
}
