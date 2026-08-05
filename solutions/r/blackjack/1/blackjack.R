library(dplyr)

parse_card <- function(card) {
  switch(
    card,
    ace = 11,
    two = 2,
    three = 3,
    four = 4,
    five = 5,
    six = 6,
    seven = 7,
    eight = 8,
    nine = 9,
    ten = ,
    jack = ,
    queen = ,
    king = 10,
    0
  )
}

first_turn <- function(card1, card2, dealer_card) {
  v1 <- parse_card(card1)
  v2 <- parse_card(card2)
  dv <- parse_card(dealer_card)
  sum <- v1 + v2

  case_when(
    sum == 22 ~ "P",
    sum == 21 & between(dv, 10, 11) ~ "S",
    sum == 21 & !between(dv, 10, 11) ~ "W",
    between(sum, 17, 20) ~ "S",
    between(sum, 12, 16) & dv >= 7 ~ "H",
    between(sum, 12, 16) & dv < 7 ~ "S",
    sum <= 11 ~ "H"
  )
}
