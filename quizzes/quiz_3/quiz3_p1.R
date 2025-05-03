# Quiz 3 - part 1
# Platform reference: End Chapter 3

library(dslabs)
data(heights)

#1. Write an ifelse() statement that returns 1 if the sex is Female and 2 if the sex is Male.
# What is the sum of the resulting vector? 

library(dslabs)
data(heights)

  # 1. Create ifelse statement for Female=1, Male=2
  result_vector <- ifelse(heights$sex == "Female", 1, 2)

  # Calculate the sum of the resulting vector
  sum_result <- sum(result_vector)

  # Print the sum
  sum_result

  
#2. Write an ifelse() statement that takes the height column and returns the height if it is greater than 72 inches and returns 0 otherwise.
# What is the mean of the resulting vector?
  
  library(dslabs)
  data(heights)
  
  # Create ifelse statement for heights > 72 inches
  height_result <- ifelse(heights$height > 72, heights$height, 0)
  
  # Calculate the mean of the resulting vector
  mean_height <- mean(height_result)
  
  # Print the mean
  mean_height
  

#3. Write a function inches_to_ft that takes a number of inches x and returns the number of feet. One foot equals 12 inches.
# What is inches_to_ft(144)?
  
  # Create the conversion function
  inches_to_ft <- function(x) {
    x / 12  # Convert inches to feet by dividing by 12
  }
  
  # Test the function with 144 inches
  inches_to_ft(144)
  
  
#4. How many individuals in the heights dataset have a height less than 5 feet?
  
  library(dslabs)
  data(heights)
  
  # Convert 5 feet to inches (since height is stored in inches)
  feet_cutoff <- 5 * 12  # 5 feet = 60 inches
  
  # Count number of individuals with height < 60 inches
  sum(heights$height < feet_cutoff)
  

#5. Which of the following are TRUE?
  # Select ALL that apply.
  # --> any(TRUE, TRUE, TRUE)
  # --> any(TRUE, TRUE, FALSE)
  # --> any(TRUE, FALSE, FALSE)
  # any(FALSE, FALSE, FALSE)
  # --> all(TRUE, TRUE, TRUE)
  # all(TRUE, TRUE, FALSE)
  # all(TRUE, FALSE, FALSE)
  # all(FALSE, FALSE, FALSE)


#6. What is it called when a function is called as an argument for another function, such as in this example code: log10(sqrt(64))?
    
  # A double function
  # --> A nested function
  # A parenthetical function
  # A double argument
  

#7. How are nested functions evaluated?
  
  #From the outside in
  # --> From the inside out