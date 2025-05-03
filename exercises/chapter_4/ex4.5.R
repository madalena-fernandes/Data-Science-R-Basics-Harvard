# Topic: Importing Data
# Platform reference: Exercise 4.5
# Book reference: Exercise 5.9


#1. Pick a measurement you can take on a regular basis. 
# For example, your daily weight or how long it takes you to run 5 miles. 
# Keep a spreadsheet that includes the date, the hour, the measurement, and any other informative variable you think is worth keeping. 
# Do this for 2 weeks. Then make a plot.

library(readxl)   
library(ggplot2)  
library(lubridate) 
library(dplyr)

runs_data <- read_excel("/Users/madalena/Desktop/pace_2025.xlsx", 
                            range = "A3:D18",  
                            col_names = TRUE)

runs_data <- dados_corrida %>%
  mutate(
    date = as.Date(date),
    
    mins = as.numeric(sub(":.*", "", pace)),
    secs = as.numeric(sub(".*:", "", pace)),
    pace_min = mins + secs/60  
  ) %>%
  select(-mins, -secs)


head(runs_data)


if(all(is.na(runs_data$pace_min))) {
  stop("Error: All pace min values are NA. Check the conversion.")
} else {
  ggplot(runs_data, aes(x = date, y = pace_min)) +
    geom_line(color = "steelblue", linewidth = 1) +
    geom_point(color = "darkblue", size = 3) +
    labs(title = "Pace evolution (min/km)",
         x = "Data",
         y = "Time per Km (minutos)") +
    theme_minimal()
}
                     