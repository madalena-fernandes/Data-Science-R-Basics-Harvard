# Topic: Programing basics
# Platform reference: Exercise 3.1
# Book reference: Exercise 3.6


library(purrr)
library(ggplot2)

# 1. What will this conditional expression return?

  x <- c(1,2,-3,4)

  if(all(x>0)){
    print("All Postives")
  } else{
    print("Not all positives")
  }
  
  # A: Not all positives
  
  
# 2. Which of the following expressions is always FALSE when at least one entry of a logical vector x is TRUE?
    
  # all(x)
  # any(x)
  # --> any(!x)
  # all(!x)


# 3. The function nchar tells you how many characters long a character vector is. 
# Write a line of code that assigns to the object new_names the state abbreviation when the state name is longer than 8 characters.
  
  new_names <- murders$abb[nchar(murders$state) > 8]

# 4. Create a function sum_n that for any given value, say  n, computes the sum of the integers from 1 to n (inclusive). 
# Use the function to determine the sum of integers from 1 to 5,000.
  
  sum_n <- function(n){
    x <- 1:n
    sum(x)
  }
  sum_n(5000)

# 5. Create a function altman_plot that takes two arguments, x and y, and plots the difference against the sum.
  
  altman_plot <- function(x, y){
    plot(x + y, y - x)  # Or plot(sum, difference)
  }
  
  
# 6. After running the code below, what is the value of x?
   
    x <- 3
  my_func <- function(y){
    x <- 5
    y+5
  }
  x
  # A: x = 3


# 7.  Write a function compute_s_n that for any given n computes the sum Sn = 1^2 + 2^2 + 3^2 + ... n^2. 
# Report the value of the sum when n = 10.

  compute_s_n <- function(n) {
    sum((1:n)^2)
  }
  
  compute_s_n(10)
  

# 8.  Define an empty numerical vector s_n of size 25 using s_n <- vector("numeric", 25) and store in the results of S1, S2, ..., S25 using a for loop.
  
  s_n <- vector("numeric", 25)
  
  for(n in 1:25) {
    s_n[n] <- sum(1:n)
  }
  s_n

#9. Repeat exercise 8, but this time use sapply.
 
  n_values <- 1:25
  
  s_n <- sapply(n_values, function(n) sum(1:n))
  s_n


#10. Repeat exercise 8, but this time use map_dbl.
  
  s_n <- map_dbl(1:25, ~ sum(1:.x))
  s_n
  
  
#11. Plot Sn versus n. Use points defined by n = 1, ..., 25.
  
  # Calculate the sequence S₁ to S₂₅
  s_n <- sapply(1:25, function(n) sum(1:n))
  
  # Create the plot
  plot(1:25, s_n, 
       type = "b",          # Both points and lines
       pch = 19,            # Solid circle points
       col = "blue",        # Color
       xlab = "n",          # x-axis label
       ylab = expression(S[n]),  # y-axis label (with subscript)
       main = expression(S[n] ~ "versus" ~ n))  # Title
  
  # Add grid lines
  grid()
  
  
  # Create data frame
  df <- data.frame(n = 1:25, S_n = sapply(1:25, function(n) sum(1:n)))
  
  # Create the plot
  ggplot(df, aes(x = n, y = S_n)) +
    geom_point(color = "blue", size = 3) +      # Points
    geom_line(color = "blue") +                 # Connecting lines
    labs(x = "n", 
         y = expression(S[n]), 
         title = expression(S[n] ~ "versus" ~ n)) +
    theme_minimal() +
    scale_x_continuous(breaks = seq(1, 25, by = 2))  # x-axis ticks every 2 units
  