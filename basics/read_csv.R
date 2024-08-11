# Load the tidyverse package
library(tidyverse)

# Specify the path to your CSV file
csv_file_path <- "files/can_lang.csv"

# Read the CSV file into a data frame
language_data <- read_csv(csv_file_path, skip = 0) #skip is used to skip lines with out comma or some information # nolint
aboriginal_lang <- filter(language_data, category == "Aboriginal languages")
selected_lang <- select(aboriginal_lang, language, mother_tongue)
arranged_lang <- arrange(selected_lang, by = desc(mother_tongue))
ten_lang <- slice(arranged_lang, 1:10)

canadian_population <- 35151728
ten_lang_percent = mutate(ten_lang, mother_tongue_percent = 100 * mother_tongue / canadian_population) # nolint

# ten_lang_percent = mutate(ten_lang,
#                            mother_tongue_percent = paste0(round(100 * mother_tongue / canadian_population, 2), " %")) # nolint: line_length_linter.
print(ten_lang)
ggplot(ten_lang, aes(x = mother_tongue, y = reorder(language , mother_tongue))) + # nolint
  geom_bar(stat = "identity") + xlab("Mother Tongue (Number of Canadian Residents)") + # nolint
  ylab("language")