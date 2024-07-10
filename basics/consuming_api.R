library(httr2)
library(tibble)
library(dplyr)

req <- request("https://api.nasa.gov/planetary/apod?api_key=bJ1ocugNDkEWS8zoiKicoh52BNBhlMOgvz9LrQf6&date=2024-06-27") # nolint
resp <- req_perform(req)
nasa_data_single <- resp_body_json(resp)
print(nasa_data_single)

#images of the day with range of dates given
req <- request("https://api.nasa.gov/planetary/apod?api_key=bJ1ocugNDkEWS8zoiKicoh52BNBhlMOgvz9LrQf6&start_date=2023-05-01&end_date=2023-07-13") # nolint
resp <- req_perform(req)
nasa_data <- resp_body_json(resp)
length(nasa_data)

#further json extraction
nasa_df_all <- tibble(bind_rows(lapply(nasa_data, as.data.frame.list)))
nasa_df <- select(nasa_df_all, date, title, copyright, url)
print(nasa_df)
