library(rvest)

page <- read_html("https://en.wikipedia.org/wiki/Canada")

selectors <- paste("td:nth-child(8)",
             "td:nth-child(4)", # nolint
             ".largestCities-cell-background+ td a", sep = ",")

population_nodes <- html_nodes(page, selectors)
print(population_nodes)

#remove the html tags
population_text <- html_text(population_nodes)
print(population_text)
