time_to_mix_juice <- function(juice) {
  switch(
    juice,
    "Pure Strawberry Joy" = 0.5,
    "Energizer" = ,
    "Green Garden" = 1.5,
    "Tropical Island" = 3,
    "All or Nothing" = 5,
    2.5
  )
}

limes_to_cut <- function(needed, limes) {
  count <- 0
  total <- 0

  if (needed == 0) { return (0) }
  
  for(lime in limes) {
    lime_value <- switch(
      lime,
      small = 6,
      medium = 8,
      large = 10,
      0
    )
    
    total <- total + lime_value
    count <- count + 1
    if(total >= needed) { return(count) }
    
  }
  return (count)
}

order_times <- function(orders) {
  for(order in orders) {
    print(time_to_mix_juice(order))
  }
}

remaining_orders <- function(time_left, orders) {
  time_used <- 0

  for (i in seq_along(orders)) {
    time_used <- time_used + time_to_mix_juice(orders[i])

    if (time_used >= time_left) {
      return(orders[-seq_len(i)])
    }
  }

  character(0)
}
