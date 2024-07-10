library(tidyverse)

faithful_data <- read_csv("/R/files/faithful.csv")

print(faithful_data)

faithful_scatter <- ggplot(faithful_data, aes(x = waiting, y = eruptions)) +
  geom_point() +
  xlab("Waiting Time (mins)") +
  ylab("Waiting Time (mins)") +
  theme(text = element_text(size = 12))
print(faithful_scatter)