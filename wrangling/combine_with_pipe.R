library(tidyverse)

untidy_lang_data <- read_csv("/R/files/region_lang_top5_cities_messy.csv")
print(untidy_lang_data)

longer_lang_data <- pivot_longer(untidy_lang_data, cols = Toronto:Edmonton, names_to = "region", values_to = "value") # nolint
print(longer_lang_data)

tidy_data <- separate(longer_lang_data, col = value, into = c("most_at_home", "most_at_work"), sep = "/") # nolint
print(tidy_data)

#using pipe |> operator to filter vancouver and the columns language and most_at_home # nolint
vancouver_data <- filter(tidy_data, region == "Vancouver") |> select(language, most_at_home) |> arrange(most_at_home) # nolint

#alternative
vancouver_data <- tidy_data |> filter(region == "Vancouver") |> select(language, most_at_home) |> arrange(most_at_home) # nolint

print(vancouver_data)