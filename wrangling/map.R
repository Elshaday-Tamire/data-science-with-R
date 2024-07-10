library(tidyverse)

lang_data <- read_csv("/R/files/can_lang.csv")

summerized_data <- lang_data |>
  select(mother_tongue:lang_known) |>
  map(max, na.rm = TRUE)
print(summerized_data)
