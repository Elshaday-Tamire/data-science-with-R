library(tidyverse)

tsv_file_path <- "/R/files/can_lang_no_names.tsv"

lang_data <- read_delim(tsv_file_path, delim = "\t", col_names = FALSE)

lang_data <- rename(lang_data, category = X1, language = X2, mother_tongue = X3, most_at_home = X4, most_at_work = X5, lang_known = X6) # nolint

print(lang_data)
