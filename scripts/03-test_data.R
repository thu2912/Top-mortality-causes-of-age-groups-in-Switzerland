#### Preamble ####
# Purpose: Tests to check if the cleaned data returns TRUE for given conditions
# Author: Thu Dong
# Date: today
# Contact: thu.dong@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)


#### Test data ####

# Tests if death column is integers
analysis_data_above40$Deaths |> class() == "integer"
analysis_data_below40$Deaths |> class() == "integer"

# Tests if there are four different years
length(unique(analysis_data_below40$Year)) == 3
length(unique(analysis_data_above40$Year)) == 3

# Tests if number of deaths is larger than 0
all(analysis_data_below40$Deaths > 0)
all(analysis_data_above40$Deaths > 0)

# Tests if death rate is larger than 0
all(analysis_data_above40$Death_rate_per_100000 > 0)
all(analysis_data_below40$Death_rate_per_100000 > 0)

# Tests if death rate is in integers
analysis_data_below40$Death_rate_per_100000 |> class() == "numeric"
analysis_data_above$Death_rate_per_100000 |> class() == "numeric"

# test if each year we collected top 10 causes 
year_data <- analysis_data_above40[analysis_data_above40$Year.x == yr, ]

year_data_2 <- analysis_data_below40[analysis_data_below40$Year.x == yr, ]

length(unique(year_data$Causes)) == 10 

length(unique(year_data_2$Causes)) == 10 
