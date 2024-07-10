library(tidyverse)

untidy_lang_data <- read_csv("/R/files/region_lang_top5_cities_messy.csv")

print(untidy_lang_data)

semi_tidy_lang_data <- pivot_longer(untidy_lang_data, cols = Toronto : Edmonton, names_to = "region", values_to = "value") # nolint

print(semi_tidy_lang_data)

tidy_lang_data <- separate(semi_tidy_lang_data, col = value, into = c("most_at_home" , "most_at_work"), sep = "/", convert = TRUE) # nolint

print(tidy_lang_data)

selected_tidy_lang_data <- select(tidy_lang_data, language, region, most_at_home, most_at_work) # nolint the lomger way

print(selected_tidy_lang_data)

selected_2_tidy_lang_data <- select(tidy_lang_data, language : most_at_home) # the shorter way # nolint

print(selected_2_tidy_lang_data)

selected_3_tidy_lang_data <- select(tidy_lang_data, starts_with("most")) # select helper called starts_with # nolint

print(selected_3_tidy_lang_data)

selected_4_tidy_lang_data <- select(tidy_lang_data, contains("_")) # select helper called contains # nolint

print(selected_4_tidy_lang_data)