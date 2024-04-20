#### Preamble ####
# Purpose: Cleans the raw data from the WHO Mortality website
# Author: Thu Dong
# Date: 20 APril 2024
# Contact: thu.dong@mail.utoronto.ca 
# License: MIT
# Pre-requisites: Install needed packages


#### Workspace setup ####
library(tidyverse)
library(dplyr)

#### Clean data ####

# read data in the raw data files (below age 40)
switzerland_2010_20to24 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2010_20to24.csv" )
switzerland_2010_25to29 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2010_25to29.csv" )
switzerland_2010_30to34 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2010_30to34.csv" )
switzerland_2010_35to39 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2010_35to39.csv" )

switzerland_2015_20to24 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2015_20to24.csv" )
switzerland_2015_25to29 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2015_25to29.csv" )
switzerland_2015_30to34 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2015_30to34.csv" )
switzerland_2015_35to39 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2015_35to39.csv" )

switzerland_2019_20to24 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2019_20to24.csv" )
switzerland_2019_25to29 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2019_25to29.csv" )
switzerland_2019_30to34 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2019_30to34.csv" )
switzerland_2019_35to39 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2019_35to39.csv" )

# read data in the raw data files (above age 40)
switzerland_2010_40to44 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2010_40to44.csv" )
switzerland_2010_45to49 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2010_45to49.csv" )
switzerland_2010_50to54 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2010_50to54.csv" )
switzerland_2010_55to59 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2010_55to59.csv" )

switzerland_2015_40to44 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2015_40to44.csv" )
switzerland_2015_45to49 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2015_45to49.csv" )
switzerland_2015_50to54 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2015_50to54.csv" )
switzerland_2015_55to59 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2015_55to59.csv" )

switzerland_2019_40to44 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2019_40to44.csv" )
switzerland_2019_45to49 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2019_45to49.csv" )
switzerland_2019_50to54 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2019_50to54.csv" )
switzerland_2019_55to59 <- read.csv( "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/raw_data/switzerland_2019_55to59.csv" )

#select needed data for below 40 group
sw_2010_20to24 <- switzerland_2010_20to24|> 
  select(Year, Cause, Deaths,Population)

sw_2010_25to29 <- switzerland_2010_25to29|> 
  select(Year, Cause, Deaths,Population)

sw_2010_30to34 <- switzerland_2010_30to34|> 
  select(Year, Cause, Deaths,Population)

sw_2010_35to39 <- switzerland_2010_35to39|> 
  select(Year, Cause, Deaths,Population)

sw_2015_20to24 <- switzerland_2015_20to24|> 
  select(Year, Cause, Deaths,Population)

sw_2015_25to29 <- switzerland_2015_25to29|> 
  select(Year, Cause, Deaths,Population)

sw_2015_30to34 <- switzerland_2015_30to34|> 
  select(Year, Cause, Deaths,Population)

sw_2015_35to39 <- switzerland_2015_35to39|> 
  select(Year, Cause, Deaths,Population)

sw_2019_20to24 <- switzerland_2019_20to24|> 
  select(Year, Cause, Deaths,Population)

sw_2019_25to29 <- switzerland_2019_25to29|> 
  select(Year, Cause, Deaths,Population)

sw_2019_30to34 <- switzerland_2019_30to34|> 
  select(Year, Cause, Deaths,Population)

sw_2019_35to39 <- switzerland_2019_35to39|> 
  select(Year, Cause, Deaths,Population)


#select needed data for above 40 group
sw_2010_40to44 <- switzerland_2010_40to44|> 
  select(Year, Cause, Deaths,Population)

sw_2010_45to49 <- switzerland_2010_45to49|> 
  select(Year, Cause, Deaths,Population)

sw_2010_50to54 <- switzerland_2010_50to54|> 
  select(Year, Cause, Deaths,Population)

sw_2010_55to59 <- switzerland_2010_55to59|> 
  select(Year, Cause, Deaths,Population)

sw_2015_40to44 <- switzerland_2015_40to44|> 
  select(Year, Cause, Deaths,Population)

sw_2015_45to49 <- switzerland_2015_45to49|> 
  select(Year, Cause, Deaths,Population)

sw_2015_50to54 <- switzerland_2015_50to54|> 
  select(Year, Cause, Deaths,Population)

sw_2015_55to59 <- switzerland_2015_55to59|> 
  select(Year, Cause, Deaths,Population)

sw_2019_40to44 <- switzerland_2019_40to44|> 
  select(Year, Cause, Deaths,Population)

sw_2019_45to49 <- switzerland_2019_45to49|> 
  select(Year, Cause, Deaths,Population)

sw_2019_50to54 <- switzerland_2019_50to54|> 
  select(Year, Cause, Deaths,Population)

sw_2019_55to59 <- switzerland_2019_55to59|> 
  select(Year, Cause, Deaths,Population)

# merge data that by causes and different years for below 40 group 
merge_df_below40_2010 <- sw_2010_20to24 %>% 
  inner_join(sw_2010_25to29, by = "Cause") %>% 
  inner_join(sw_2010_30to34, by = "Cause") %>%
  inner_join(sw_2010_35to39, by = "Cause")

merge_df_below40_2015 <- sw_2015_20to24 %>% 
  inner_join(sw_2015_25to29, by = "Cause") %>% 
  inner_join(sw_2015_30to34, by = "Cause") %>%
  inner_join(sw_2015_35to39, by = "Cause")

merge_df_below40_2019 <- sw_2019_20to24 %>% 
  inner_join(sw_2019_25to29, by = "Cause") %>% 
  inner_join(sw_2019_30to34, by = "Cause") %>%
  inner_join(sw_2019_35to39, by = "Cause")


# merge data that by causes and different years for above 40 group 
merge_df_above40_2010 <- sw_2010_40to44 %>% 
  inner_join(sw_2010_45to49, by = "Cause") %>% 
  inner_join(sw_2010_50to54, by = "Cause") %>%
  inner_join(sw_2010_55to59, by = "Cause")

merge_df_above40_2015 <- sw_2015_40to44 %>% 
  inner_join(sw_2015_45to49, by = "Cause") %>% 
  inner_join(sw_2015_50to54, by = "Cause") %>%
  inner_join(sw_2015_55to59, by = "Cause")

merge_df_above40_2019 <- sw_2019_40to44 %>% 
  inner_join(sw_2019_45to49, by = "Cause") %>% 
  inner_join(sw_2019_50to54, by = "Cause") %>%
  inner_join(sw_2019_55to59, by = "Cause")

# calculating total data of causes, populations, deaths, and death rate for below 40 
clean_data_below40_2010 <- merge_df_below40_2010 |> 
  mutate(Deaths = Deaths.x + Deaths.y + Deaths.x.x + Deaths.y.y,
         Deaths = as.integer(Deaths),
         Population = Population.x + Population.y +
           Population.x.x, Population.y.y,
         Death_rate_per_100000 = (Deaths/Population)*100000)|> 
  select(Year.x, Cause,Population,Deaths, Death_rate_per_100000 )

clean_data_below40_2015 <- merge_df_below40_2015 |> 
  mutate(Deaths = Deaths.x + Deaths.y + Deaths.x.x + Deaths.y.y, 
         Deaths = as.integer(Deaths),
         Population = Population.x + Population.y +
           Population.x.x, Population.y.y,
         Death_rate_per_100000 = (Deaths/Population)*100000)|> 
  select(Year.x, Cause,Population,Deaths, Death_rate_per_100000 )


clean_data_below40_2019 <- merge_df_below40_2019 |> 
  mutate(Deaths = Deaths.x + Deaths.y + Deaths.x.x + Deaths.y.y, 
         Deaths = as.integer(Deaths),
         Population = Population.x + Population.y +
           Population.x.x, Population.y.y,
         Death_rate_per_100000 = (Deaths/Population)*100000)|> 
  select(Year.x, Cause,Population,Deaths, Death_rate_per_100000 )

# calculating total data of causes, populations, deaths, and death rate for above
clean_data_above40_2010 <- merge_df_above40_2010 |> 
  mutate(Deaths = Deaths.x + Deaths.y + Deaths.x.x + Deaths.y.y,
         Deaths = as.integer(Deaths),
         Population = Population.x + Population.y +
           Population.x.x, Population.y.y,
         Death_rate_per_100000 = (Deaths/Population)*100000)|> 
  select(Year.x, Cause,Population,Deaths, Death_rate_per_100000 )

clean_data_above40_2015 <- merge_df_above40_2015 |> 
  mutate(Deaths = Deaths.x + Deaths.y + Deaths.x.x + Deaths.y.y,
         Deaths = as.integer(Deaths),
         Population = Population.x + Population.y +
           Population.x.x, Population.y.y,
         Death_rate_per_100000 = (Deaths/Population)*100000)|> 
  select(Year.x, Cause,Population,Deaths, Death_rate_per_100000 )

clean_data_above40_2019 <- merge_df_above40_2019 |> 
  mutate(Deaths = Deaths.x + Deaths.y + Deaths.x.x + Deaths.y.y,
         Deaths = as.integer(Deaths),
         Population = Population.x + Population.y +
           Population.x.x, Population.y.y,
         Death_rate_per_100000 = (Deaths/Population)*100000)|> 
  select(Year.x, Cause,Population,Deaths, Death_rate_per_100000 )


# top 10 causes for both groups from 2010,2015, and 2019
top_10_causes_below40_2010 <- clean_data_below40_2010 %>%
  arrange(desc(Death_rate_per_100000)) %>%  # Arrange by Death Rate (descending)
  head(10) 

top_10_causes_below40_2015 <- clean_data_below40_2015 %>%
  arrange(desc(Death_rate_per_100000)) %>%  # Arrange by Death Rate (descending)
  head(10) 

top_10_causes_below40_2019 <- clean_data_below40_2019 %>%
  arrange(desc(Death_rate_per_100000)) %>%  # Arrange by Death Rate (descending)
  head(10) 

top_10_causes_above40_2010 <- clean_data_above40_2010 %>%
  arrange(desc(Death_rate_per_100000)) %>%  # Arrange by Death Rate (descending)
  head(10) 
top_10_causes_above40_2015 <- clean_data_above40_2015%>%
  arrange(desc(Death_rate_per_100000)) %>%  # Arrange by Death Rate (descending)
  head(10) 
top_10_causes_above40_2019 <- clean_data_above40_2019 %>%
  arrange(desc(Death_rate_per_100000)) %>%  # Arrange by Death Rate (descending)
  head(10) 

## merge all data of 10 causes in each year
clean_data_below40 <- bind_rows(top_10_causes_below40_2010,
                                top_10_causes_below40_2015,
                                top_10_causes_below40_2019)|> 
  mutate(Age = "below 40")|> 
  select(Year.x, Cause,Population,Deaths, Death_rate_per_100000, Age)

clean_data_above40 <-bind_rows(top_10_causes_above40_2010,
                                top_10_causes_above40_2015,
                                top_10_causes_above40_2019)|> 
  mutate(Age = "above 40")|> 
  select(Year.x, Cause,Population,Deaths, Death_rate_per_100000, Age)

#### Save data ####
write.csv(clean_data_below40, "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/analysis_data/analysis_data_below40.csv")
write.csv(clean_data_above40, "~/Top-mortality-causes-of-age-groups-in-Switzerland/data/analysis_data/analysis_data_above40.csv")
