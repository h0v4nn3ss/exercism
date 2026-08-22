#!/usr/bin/env Rscript

suppressPackageStartupMessages({
  library(datasets)
  library(tidyverse)
})

p <- 35
tree_data <- as_tibble(trees) %>%
	rename(Diameter = Girth)

girth_n_weight <- function(data, rnd_digits = 1) {
data %>%
	mutate(
		Girth = round(Diameter * pi, digits = rnd_digits),
		Weight = round(p * Volume, digits =  rnd_digits)
	)

}

orchard_copy <- function(data) {
	data %>%
		relocate(c(Weight, Height)) %>%
		arrange(Weight)
}

customer_copy <- function(data, min_height, max_height, max_weight) {
	data %>%
		filter(
			Height >= min_height,
			Height <= max_height,
			Weight <= max_weight
		) %>%
		select(Height, Weight, Diameter, Girth)
}

# testing
#tree_data %>%
#	girth_n_weight() %>%
#	orchard_copy() %>%
#	customer_copy(65,75,1500) %>%
#	head(3)
