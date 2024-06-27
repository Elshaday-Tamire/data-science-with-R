library(RPostgres)
library(dplyr)  # Load dplyr before dbplyr
library(dbplyr)
conn_roles_data <- dbConnect(RPostgres::Postgres(), dbname = "cedardb",
                        host = "54.218.135.148", port = 5432, # nolint
                        user = "cedar", password = "cedaradmin2024")
tables <- dbListTables(conn_roles_data)
print(tables)

roles_table <- tbl(conn_roles_data, "Roles")
print(roles_table)

selected_roles <- select(roles_table, name, description)
print(selected_roles)

#let's collect it to R dataFrame
selected_roles_collected <- collect(selected_roles)
print(selected_roles_collected)
