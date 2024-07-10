library(tidyverse)

untidy_lang_data <- read_csv("/R/files/region_lang_top5_cities_messy.csv")
print(untidy_lang_data)

longer_lang_data <- pivot_longer(untidy_lang_data, cols = Toronto:Edmonton, names_to = "region", values_to = "value") # nolint
print(longer_lang_data)

tidy_data <- separate(longer_lang_data, col = value, into = c("most_at_home", "most_at_work"), sep = "/") # nolint
print(tidy_data)

official_langs_char <- filter(tidy_data, category == "Official languages")
print(official_langs_char)


#using mutate to change the data type of a column
official_langs_numeric <- mutate(official_langs_char, most_at_home = as.numeric(most_at_home), most_at_work = as.numeric(most_at_work)) # nolint
print(official_langs_numeric)

#using mutate to add a new column
english_langs <- filter(official_langs_numeric, language == "English")
print(english_langs)

#the list is in order
city_pops <- c(5928040, 4098927, 2463431, 1392609, 1321426)

english_langs <- mutate(english_langs, most_at_home_proportion = most_at_home/city_pops) # nolint
print(english_langs)