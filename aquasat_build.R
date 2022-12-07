library(tidyverse)
library(purrr)
library(readr)
library(stringr)
library(lubridate)
path <- "G:/My Drive/Collection2_test_pull_final"

sr <- list.files(path=path, pattern=".csv", full.names = T) %>%
  map_df(~ fread(., stringsAsFactors = F))

sr.test <- sr %>%
  filter(!is.na(Blue))

test <- read.csv("C:/Users/samsi/OneDrive - University of Pittsburgh/OhioRiver_RS/aquasat_tiles.csv")

aquasat_info <- read.csv("C:/Users/samsi/OneDrive - University of Pittsburgh/Aquasat_Chl_2022.txt")

dates <- aquasat_info %>%
  select(date, SiteID, uniqueID)


sr.test$date <- sr.test$date/1000
  
  
sr.test$date <- as.POSIXct(sr.test$date, origin = "1970-01-01")

sr.test <- sr.test %>%
  mutate(date_only = date(date))
                  