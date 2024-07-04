library(tidyverse)

untidy_lang_data <- read_csv("files/region_lang_top5_cities_long.csv")
print(untidy_lang_data)

tidy_lang_data <- pivot_wider(untidy_lang_data, names_from = type, values_from = count) # nolint

print(tidy_lang_data)