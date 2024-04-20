#### Preamble ####
# Purpose: Downloads and saves the data from WHO Mortality Database
# Author: Thu Dong
# Date: 20 April 2024
# Contact: thu.dong@mail.utoronto.ca 
# License: MIT



#### Download data ####
### The data is downloaded directly from WHO Mortality Database 
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
         
