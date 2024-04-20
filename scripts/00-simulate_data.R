#### Preamble ####
# Purpose: Simulates data
# Author: Thu Dong
# Date: 20 April 2024
# Contact: thu.dong@mail.utoronto.ca 
# License: MIT
# Pre-requisites: Install needed packages


#### Workspace setup ####
library(tidyverse)
library(tibble)
library(dplyr)

# Define the causes, years, age groups, and base population
simulation_data <- tibble(
  cause = rep(x = c("Heart", "Stroke", "Cancer", "Tuberculosis"), each = 3),
  year = rep(x = c(2010, 2015, 2019), times = 4),
  deaths = rnbinom(n = 12, size = 40, prob = 0.5),
  age = rep(c("20-39", "40- 59"), length.out = 12),
  population = rep(c(500000, 600000, 700000), length.out = 12)
)






