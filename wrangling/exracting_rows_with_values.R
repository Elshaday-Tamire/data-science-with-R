library(tidyverse)

region_data <- read_csv("/R/files/region_data.csv")

print(region_data)

city_names <- c("Edmonton", "Calgary", "Vancouver", "Montréal", "Toronto")

five_cities <- filter(region_data, region %in% city_names)

print(five_cities)