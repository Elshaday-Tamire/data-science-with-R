library(tidyverse)
region_data <- read_csv("/R/files/can_lang.csv")

print(region_data)

summerized_data <- summarize(region_data, min_most_at_home = min(most_at_home), max_most_at_home = max(most_at_home)) # nolint
print(summerized_data)