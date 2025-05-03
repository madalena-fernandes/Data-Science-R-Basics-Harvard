# Topic: Basic Plots
# Platform reference: Exercise 1.8  
# Book reference: Exercise 2.16  


# 1. We made a plot of total murders versus population and noted a strong relationship. 
# Not surprisingly, states with larger populations had more murders.

library(dslabs)
data(murders)
population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions, total_gun_murders,
     xlab = "Population (M)",
     ylab = "Murders (M)",
     main = "Murders vs. Population")

# Keep in mind that many states have populations below 5 million and are bunched up. 
# We may gain further insights from making this plot in the log scale. 
# Transform the variables using the log10 transformation and then plot them.

log_pop <- log10(murders$population/10^6)
log_murders <- log10(murders$total)
#plot(log_pop, log_murders)

# plot more suitable, with captions
plot(log_pop, log_murders,
     xlab = "Population (log10, millions)",
     ylab = "Murders (log10)",
     main = "Murders vs. Population (Log escale)")

# 2. Create a histogram of the state populations.
  
  hist(murders$population / 10^6,  
       xlab = "Population (millions)",
       main = "USA Population distribution")

# 3. Generate boxplots of the state populations by region.
  
  boxplot(population ~ region,
          data = murders,
          ylab = "Population",
          main = "State population by region")
  
  
  