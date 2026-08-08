scale <- function(point, s) {
  point * s
}

translate <- function(point, ...) {
  point + c(...)
}

transform2d <- function(dx, dy, s = 1) {
  traslateScale <- function(point) {
    t <- translate(point, dx, dy)
    scale(t, s)
  }
}

transform3d <- function(dx, dy, dz, s = 1) {
  traslateScale <- function(point) {
    t <- translate(point, dx, dy, dz)
    scale(t, s)
  }
}
