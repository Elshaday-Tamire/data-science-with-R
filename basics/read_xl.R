library(readxl)

excle_file_path <- "/R/files/can_lang.xlsx"

lang_data <- read_excel(excle_file_path)

print(lang_data)