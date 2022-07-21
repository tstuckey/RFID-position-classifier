rm(list=ls())
library(roxygen2)
library(tidyverse)

setwd("/Users/thomasstuckey/Google\ Drive/personal/Learning/Masters/2020\ 08\ Fall/Data\ Mining/project/svm_report/data_sets/Datasets_Healthy_Older_People")

file_path <- "S1_Dataset/*M", "room_1", "male")
col_to_bindA <- "room1"
col_to_bindB <- "male"

the_data <- lapply(Sys.glob(file_path), read_csv, col_names = FALSE)
the_data <- dplyr::bind_rows(the_data) 
new_colA <- rep(col_to_bindA, nrow(the_data))
new_colB <- rep(col_to_bindB, nrow(the_data))
the_data <- cbind(the_data, new_colA, new_colB)