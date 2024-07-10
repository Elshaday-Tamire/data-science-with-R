library(tidyverse)

url_path <- "https://raw.githubusercontent.com/UBC-DSCI/data/main/can_lang.csv"

lang_data <- read_csv(url_path)

print(lang_data)