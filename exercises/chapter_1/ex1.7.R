# Topic: Indexing  
# Platform reference: Exercise 1.7
# Book reference: Exercise 2.14  
  

library(dslabs)
data(murders)

# 1. Compute the per 100,000 murder rate for each state and store it in an object called murder_rate. 
# Then use logical operators to create a logical vector named low that tells us which entries of murder_rate are lower than 1.

  murder_rate <- (murders$total / murders$population) * 100000
  low <- murder_rate < 1

# 2. Now use the results from the previous exercise and the function which to determine the indices of murder_rate associated with values lower than 1.

  indexes <- which(murder_rate < 1)
  #indexes <- which(low)
  
# 3. Use the results from the previous exercise to report the names of the states with murder rates lower than 1.

  states_low <- murders$state[low]
  
  
# 4. Now extend the code from exercises 2 and 3 to report the states in the Northeast with murder rates lower than 1. 
# Hint: use the previously defined logical vector low and the logical operator &.

  northeast_low <- murders$state[low & murders$region == "Northeast"]
  
  
# 5. In a previous exercise we computed the murder rate for each state and the average of these numbers. 
# How many states are below the average?
  
  average <- mean(murder_rate)
  below_avg <- sum(average)
  

# 6. Use the match function to identify the states with abbreviations AK, MI, and IA. 
# Hint: start by defining an index of the entries of murders$abb that match the three abbreviations, then use the [ operator to extract the states.

  match_index <- match(c("AK", "MI", "IA"), murders$abb)
  states_match <- murders$state[match_index]
  
  
# 7. Use the %in% operator to create a logical vector that answers the question: which of the following are actual abbreviations: MA, ME, MI, MO, MU?
  
  c("MA", "ME", "MI", "MO", "MU") %in% murders$abb
  abbs <- c("MA", "ME", "MI", "MO", "MU")
                                                                                                                                                                                                          
# 8. Extend the code you used in exercise 7 to report the one entry that is not an actual abbreviation. 
# Hint: use the ! operator, which turns FALSE into TRUE and vice versa, then which to obtain an index.
  
  invalid_index <- which(!abbs %in% murders$abb)
  invalid_abb <- abbs[invalid_index]
  