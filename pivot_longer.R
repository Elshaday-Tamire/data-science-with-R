library(tidyverse)

untidy_lang_data <- read_csv("files/region_lang_top5_cities_wide.csv")
print(untidy_lang_data)

tidy_lang_data <- pivot_longer(untidy_lang_data, cols = Toronto : Edmonton, names_to = "region", values_to = "mother_toungue") # nolint
print(tidy_lang_data)
