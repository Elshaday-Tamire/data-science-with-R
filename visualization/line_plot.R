library(tidyverse)

co2_data <- read_csv("/R/files/mauna_loa_data.csv")

co2_line <- ggplot(co2_data, aes(x = date_measured, y = ppm)) +
  geom_line() + xlab("Year") + ylab("Atmospheric co2 (ppm)") +
  theme(text = element_text(size = 12))

print(co2_line)