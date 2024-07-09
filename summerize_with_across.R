library(tidyverse)
lang_data <- read_csv("files/can_lang.csv")

print(lang_data)

summerized_lang <- lang_data |>
  summarise(across(mother_tongue:lang_known, max))

print(summerized_lang)
#alternative if the values holds NA.

summerized_lang |>
  summarize(across(mother_tongue:lang_known, ~ max(.x, na.rm = TRUE)))