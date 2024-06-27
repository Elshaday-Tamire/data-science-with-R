library(tidyverse)

csv_file_path <- "files/can_lang.csv"

lang_data <- read_csv(csv_file_path)

non_official_lang_data <- filter(lang_data, category != "Official languages")
write_csv(non_official_lang_data, "files/non_official_languages.csv")