#### Preamble ####
# Purpose: Clean the raw data and make a dataset with more of the essential features 
# Author: Liam Wall
# Date: 10 October 2024
# Contact: liam.wall@mail.utoronto.ca


black_keys <- readRDS("data/black_keys_raw.rds")

black_keys_clean <- black_keys |>
  select(album_release_date, 
         album_release_date_precision, 
         album_name, 
         track_name,
         track_number,
         duration_ms,
         danceability,
         energy,
         speechiness,
         loudness,
         valence,
         liveness,
         acousticness,
         instrumentalness,
         tempo
         ) |>
  mutate(album_release_date = ymd(album_release_date))

saveRDS(black_keys_clean, "data/black_keys_cleaned.rds")
