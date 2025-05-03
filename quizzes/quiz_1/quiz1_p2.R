# 1. Consider the vector x:

x <- c(2, 43, 27, 96, 18)

# Match the following outputs to the function which produces that output. 
# Options include sort(x), order(x), rank(x) and none of these.

s <- sort(x)
o <- order(x)
r <- rank(x)

s
o
r

# 2. Continue working with the vector x defined in question 1.

# Match the following functions to their output. 
# Options include integers 1 through 5 and none of these.

min(x)
which.min(x)
max(x)
which.max(x)


# 3. Mandi, Amy, Nicole, and Olivia all ran different distances in different time intervals. 
# Their distances (in miles) and times (in minutes) are as follows:

  name <- c("Mandi", "Amy", "Nicole", "Olivia")
  distance <- c(0.8, 3.1, 2.8, 4.0)
  time <- c(10, 30, 40, 50)
  
  
  # Write a line of code to convert time to hours. Remember there are 60 minutes in an hour. 
  # Then write a line of code to calculate the speed of each runner in miles per hour. 
  # Speed is distance divided by time.
  # How many hours did Olivia run?
  
  hours <- time / 60
  speed <- distance / hours
  
  runners <- data.frame(names = name, speeds = speed)
  
  
# 4. Which of the following lines of code will successfully define vector x?
  
  # x = c(1,5,6)
  
  # x <- 3,"b",8
  
  # --> x <- c(4,"seven",9)
  
  # x = "z"

  
# 5. Which line of code will create a new vector called km that contains the elements from an existing vector called mi converted from miles to kilometers?
  
  # mi * 0.62
  
  # km = mi * 0.62
  
  # km/mi <- 0.62
  
  # --> km <- mi * 0.62  
  

  
#For questions 6, 7, and 8, use the dslabs dataset olive.
  
  # The olive dataset contains composition in percentage of eight fatty acids found in the lipid fraction of 572 Italian olive oils:
    
    library(dslabs)
    data(olive)
    head(olive)
  
#6. Plot the percent palmitic acid versus palmitoleic acid in a scatterplot. 
# What relationship do you see?
    
    # There is no relationship between palmitic and palmitoleic.
    
    # --> There is a positive linear relationship between palmitic and palmitoleic.
    
    # There is a negative linear relationship between palmitic and palmitoleic.
    
    # There is a positive exponential relationship between palmitic and palmitoleic.
    
    # There is a negative exponential relationship between palmitic and palmitoleic.
  
  
  x <- olive$palmitic
  y <- olive$palmitoleic
  plot(x,y, xlab = "Palmitic", ylab = 'palmitoleic', main = "Palmitic acid vs Palmitoleic acid")


#7. Create a histogram of the percentage of eicosenoic acid in olive.
  
# Which of the following is true?
    
  # --> The most common value of eicosenoic acid is below 0.05%.
  
  # The most common value of eicosenoic acid is greater than 0.5%.
  
  # The most common value of eicosenoic acid is around 0.3%.
  
  # There are equal numbers of olive oils with eicosenoic acid below 0.05% and greater than 0.5%.
  
  
  x <- with(olive, eicosenoic)
  hist(x)

  
#8. Make a boxplot of palmitic acid percentage in olive with separate distributions for each region.
  
  
  boxplot(palmitic ~ region, data = olive)
  
  # Which region has the highest median palmitic acid percentage?
  # Southern Italy
  
  # Which region has the most variable palmitic acid percentage?
  # Southern Italy
  
  
  
    