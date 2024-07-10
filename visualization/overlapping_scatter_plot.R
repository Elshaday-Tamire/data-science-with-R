library(tidyverse)

co2_data <- read_csv("/R/files/mauna_loa_data.csv")
print(co2_data)

co2_scatter <- ggplot(co2_data, aes(x = date_measured, y = ppm)) +
  geom_point()
print(co2_scatter)