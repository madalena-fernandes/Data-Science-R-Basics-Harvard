# Topic: Basics  
# Platform reference: Exercise 1.2 
# Book reference: Exercise 2.3  
  

#Ex1
# What is the sum of the first 100 positive integers? 
# The formula for the sum of integers 1 through n is n(n + 1) /2. 
# Define n = 100 and then use R to compute the sum of 1 through 100 using the formula.
# What is the sum?

n <- 100
total <- n * (n + 1) /2
print(total)


#Ex2
# Now use the same formula to compute the sum of the integers from 1 through 1,000.
n <- 1000
total <- n * (n + 1) / 2
print(total)

#Ex3
# Based on the result, what do you think the functions seq and sum do? You can use help.
# 
# sum creates a list of numbers and seq adds them up.
# --> seq creates a list of numbers and sum adds them up.
# seq creates a random list and sum computes the sum of 1 through 1,000.
# sum always returns the same number.


#Ex4
# In math and programming, we say that we evaluate a function when we replace the argument with a given number. 
# So if we type sqrt(4), we evaluate the sqrt function. 
# In R, you can evaluate a function inside another function. 
# The evaluations happen from the inside out. 
# Use one line of code to compute the log, in base 10, of the square root of 100.
l <- log(sqrt(100), base = 10)
print(l)

#Ex5
# Which of the following will always return the numeric value stored in x? 
# You can try out examples and use the help system if you want.
# log(10^x)
# log10(x^10)
# --> log(exp(x))
# exp(log(x, base = 2))


