# TODO: define the 'expected_minutes_in_oven()' function
expected_minutes_in_oven <- function(){
  60
}
# TODO: define the 'remaining_time_in_minutes()' function
remaining_time_in_minutes <- function(x){
  expected_minutes_in_oven() - x
}
# TODO: define the 'prep_time_in_minutes()' function
prep_time_in_minutes <- function(x){
  x * 2
}
# TODO: define the 'elapsed_time_in_minutes()' function
elapsed_time_in_minutes <- function(x, y) {
  prep_time_in_minutes(x) + y
}