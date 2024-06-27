library(DBI)
library(dplyr)  # Load dplyr before dbplyr
library(dbplyr)

conn_lang_data <- dbConnect(RSQLite::SQLite(), "files/can_lang.db")

tables <- dbListTables(conn_lang_data)

print(tables)

lang_table <- show_query(tbl(conn_lang_data, "lang"))
print(lang_table)

aboriginal_lang <- filter(lang_table, category == "Aboriginal languages")
selected_lang <- select(aboriginal_lang, language, mother_tongue)
print(selected_lang)

#let's collect it to R dataFrame
selected_lang_collected <- collect(selected_lang)
print(selected_lang_collected)
