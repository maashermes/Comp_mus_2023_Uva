library(flexdashboard)
library(plotly)
library(tidyverse)
library(spotifyr)
library(dplyr)
library(compmus)
library(bslib)
library(tidymodels)
library(ggdendro)

moon1 <- 
  get_tidy_audio_analysis('081AHcLTz6opbo1V9XN8eL') %>% 
  select(segments) %>% unnest(segments) %>% 
  select(start, duration, pitches)

saveRDS(object = moon1,file = "data/moon1-data.RDS")

