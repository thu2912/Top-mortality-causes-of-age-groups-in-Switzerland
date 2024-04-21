#### Preamble ####
# Purpose: Models for young adults and middle-aged adults
# Author: Thu Dong
# Date: 20 April, 2024
# Contact: thu.dong@mail.utoronto.ca
# License: MIT



#### Workspace setup ####
library(tidyverse)
library(rstanarm)
library(parameters)
library(broom)
library(broom.mixed)

#### Read data ####
analysis_data_below40 <- read_csv("~/Top-mortality-causes-of-age-groups-in-Switzerland/data/analysis_data/analysis_data_below40.csv")
analysis_data_above40 <- read_csv("~/Top-mortality-causes-of-age-groups-in-Switzerland/data/analysis_data/analysis_data_above40.csv")
### Model data ####

# get common causes of deaths for both age group

top_10_2010_below40 <- analysis_data_below40$Cause[analysis_data_below40$Year.x == 2010]
top_10_2015_below40 <- analysis_data_below40$Cause[analysis_data_below40$Year.x == 2015]
top_10_2019_below40 <- analysis_data_below40$Cause[analysis_data_below40$Year.x == 2019]

common_causes_below40 <- intersect(intersect(top_10_2010_below40, top_10_2015_below40), top_10_2019_below40) 
total_deaths_below40 <- aggregate(Deaths ~ Cause, subset(clean_data_below40, Cause %in% common_causes_below40), sum)

common_causes_below40_table <- total_deaths_below40 %>% 
  arrange(desc(Deaths))%>%
  head(5)

data_below40 <-
  analysis_data_below40 |>
  filter(Cause %in% common_causes_below40_table$Cause) 

top_10_2010_above40 <- clean_data_above40$Cause[clean_data_above40$Year.x == 2010]
top_10_2015_above40 <- clean_data_above40$Cause[clean_data_above40$Year.x == 2015]
top_10_2019_above40  <- clean_data_above40$Cause[clean_data_above40$Year.x == 2019]

common_causes_above40  <- intersect(intersect(top_10_2010_above40, top_10_2015_above40), top_10_2019_above40 )
total_deaths_above40  <- aggregate(Deaths ~ Cause, subset(clean_data_above40, Cause %in% common_causes_above40), sum)

common_causes_above40_table <- total_deaths_above40  %>% 
  arrange(desc(Deaths))%>%
  head(5)

data_above40 <-
  analysis_data_above40 |>
  filter(Cause %in% common_causes_above40_table$Cause)


set.seed(853)


# Negbin model for young adults
cause_of_death_below40 <-
  stan_glm(
    Deaths ~ Cause,
    data = data_below40,
    family = neg_binomial_2(link = "log"),
    seed = 853
  )

# Negbin model for middle age
cause_of_death_above40 <-
  stan_glm(
    Deaths ~ Cause,
    data = data_above40,
    family = neg_binomial_2(link = "log"),
    seed = 853
  )

#### Save model ####
saveRDS(
  cause_of_death_below40,
  file = "models/cause_of_death_below40.rds"
)

saveRDS(
  cause_of_death_above40,
  file = "models/cause_of_death_above40.rds"
)
