library(tidyverse)
library(lubridate)

co2_data <- read_csv("/R/files/mauna_loa_data.csv")

co2_line <- ggplot(co2_data, aes(x = date_measured, y = ppm)) +
  geom_line() +
  xlab("Year") +
  ylab("Atmospheric Co2(ppm)") +
  xlim(c(date("1990-01-01"), date("1993-12-01"))) +
  theme(text = element_text(size = 12))

print(co2_line)
