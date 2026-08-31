#!/usr/bin/env Rscript

suppressMessages(library(lubridate))

schedule_appointment <- function(appointment) {
  mdy_hms(appointment)
}

has_passed <- function(appointment) {
  appointment < now()
}

is_afternoon_appointment <- function(appointment) {
  appointment |> hour() >= 12 && appointment |> hour() < 18
}

day_of_week <- function(appointment) {
  wday(appointment, week_start = 1)
}

reschedule <- function(appointment) {
  appointment <- mdy_hms(appointment)
  dow <- day_of_week(appointment)
  switch(dow,
    appointment + days(4),
    appointment + days(3),
    appointment + days(2),
    appointment + days(1),
    appointment + days(7),
    appointment + days(6)
  )
}


reschedule(now() + days(1))

