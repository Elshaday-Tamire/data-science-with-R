library(tidyverse)

download_path <- "files/can_lang_downloaded.csv"
download_url <- "https://raw.githubusercontent.com/UBC-DSCI/data/main/can_lang.csv" # nolint

download.file(download_url, download_path)

lang_data <- read_csv(download_path)

print(lang_data)