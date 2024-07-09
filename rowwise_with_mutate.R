library(tidyverse)
lang_data <- read_csv("files/can_lang.csv")

rowwise_max <- lang_data |>
  select(mother_tongue:lang_known) |>
  rowwise() |>
  mutate(maximum = max(c(mother_tongue, most_at_home, most_at_work, lang_known))) # nolint
print(rowwise_max)
