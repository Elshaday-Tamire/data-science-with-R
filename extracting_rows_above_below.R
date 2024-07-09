library(tidyverse)

region_data <- read_csv("files/region_data.csv")

household_greater_than_vancouver <- filter(region_data, households > 960894) # nolint

household_less_than_vancouver <- filter(region_data, households < 960894)

print(household_greater_than_vancouver)
print("******************")
print("******************")
print("******************")
print("******************")
print("******************")
print(household_less_than_vancouver)