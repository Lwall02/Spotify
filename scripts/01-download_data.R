#### Preamble ####
# Purpose: Downloads and saves the data from the Spotify API
# Author: Liam Wall
# Date: 10 October 2024
# Contact: liam.wall@mail.utoronto.ca
# This is not necessarily reproducible like other projects because the access to the API is based on my specific Client identification which the reader does nto have access to.



# install.packages("devtools")
# devtools::install_github("charlie86/spotifyr")
# install.packages("spotifyr")
# library(spotifyr)

black_keys <- get_artist_audio_features("the black keys")

saveRDS(black_keys, "data/black_keys.rds")
