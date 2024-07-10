library(tidyverse)
region_data <- read_csv("/R/files/can_lang.csv")
print(region_data)

converted_data_integer <- region_data |>
  mutate(across(mother_tongue:lang_known, as.integer))

print(converted_data_integer)