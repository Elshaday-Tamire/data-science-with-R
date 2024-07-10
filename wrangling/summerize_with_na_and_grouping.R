library(tidyverse)

region_lang_data_na <- read_csv("/R/files/region_lang_with_nas.csv")
print(region_lang_data_na)

#the following with result in NA summary
summerized_data <- summarize(region_lang_data_na, min_most_at_work = min(most_at_work), max_most_at_work = max(most_at_work)) # nolint
print(summerized_data)

#use the following to solve the issue by ignoring NA values
corrected_summerized_data <- summarize(region_lang_data_na, min_most_at_work = min(most_at_work, na.rm = TRUE), max_most_at_work = max(most_at_work, na.rm = TRUE)) # nolint

print(corrected_summerized_data)

# we can also summerise with group of raws
can_lang_data <- read_csv("/R/files/can_lang.csv")
print(can_lang_data)
group_summary_by_category <- group_by(can_lang_data, category) |>
 summarize(min_most_at_work = min(most_at_work, na.rm = TRUE), max_most_at_work = max(most_at_work, na.rm = TRUE)) # nolint
print(group_summary_by_category)