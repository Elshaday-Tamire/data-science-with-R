library(tidyverse)

tsv_file_path <- "/R/files/can_lang.tsv"

lang_data <- read_tsv(tsv_file_path)

# lang_data <- rename(lang_data,
#        category = X1, # nolint
#        language = X2,
#        mother_tongue = X3,
#        most_at_home = X4,
#        most_at_work = X5,
#        lang_known = X6)

print(lang_data)