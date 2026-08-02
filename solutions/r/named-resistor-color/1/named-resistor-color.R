resistor_bands <- c("black" = 0, "brown" = 1, "red" = 2, "orange" = 3, "yellow" = 4, "green" = 5, "blue" = 6, "violet" = 7, "grey" = 8, "white" = 9)

band_value <- function(band) {
  unname(resistor_bands[band])
}

two_band_value <- function(bands) {
  char1 <- as.character(band_value(bands[1]))
  char2 <- as.character(band_value(bands[2]))
  as.numeric(paste0(char1, char2))
}

ohms <- function(bands) {
  wholeNumber <- two_band_value(c(bands[1], bands[2]))
  wholeNumber * (10 ^ band_value(bands[3]))
}
