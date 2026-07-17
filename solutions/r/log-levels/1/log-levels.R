library(stringr)

message <- function(msg) {
  trimws(unlist(strsplit(msg, ":"))[2])
}

log_level <- function(msg) {
  log <- unlist(strsplit(msg, ":"))[1]
  start <- 2
  end <- nchar(log)-1
  str_to_lower(substr(log, start, end))
}

reformat <- function(msg) {
  m <- message(msg)
  l <- log_level(msg)
  vl <- c("(", l, ")")
  fl <- str_flatten(vl, "")
  vmfl <- c(m,fl)
  str_flatten(vmfl, " ")
}
