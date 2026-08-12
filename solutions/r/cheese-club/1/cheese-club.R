all_15 <- function(ratings) {
  all(ratings %in% c(1,5))
}

name_customers <- function(names, ratings) {
  Map(\(n, r) list(name = n, rating = r), names, ratings) |>
      unname()
}

emphatics <- function(names, ratings) {
  unname(Filter(\(x) all_15(x$rating), name_customers(names, ratings)))
}

to_binary <- function(ratings) as.integer(ratings == 5)

satisfactions <- function(ratings) {
  round(cumsum(ratings) / seq_along(ratings), 2)
}

