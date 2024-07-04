library(tidyverse)

untidy_lang_data <- read_csv("files/region_lang_top5_cities_long.csv")

print(untidy_lang_data)

tidy_lang_data <- pivot_wider(untidy_lang_data, names_from = type, values_from = count) # nolint

print(tidy_lang_data)

filtered_1_tidy_lang_data <- filter(tidy_lang_data, category == "Aboriginal languages") # nolint we can also do != to exclude

print(filtered_1_tidy_lang_data)

filtered_2_tidy_lang_data <- filter(tidy_lang_data, region == "Toronto" , category == "Aboriginal languages") # nolint we can use '&' or ',' interchangably

print(filtered_2_tidy_lang_data)

filtered_3_tidy_lang_data <- filter(tidy_lang_data, region == "Toronto" | category == "Aboriginal languages") # nolint either of the 2

print(filtered_3_tidy_lang_data)