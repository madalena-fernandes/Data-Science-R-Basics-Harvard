# Topic: Vectors
# Platform reference: Exercise 1.4   
# Book reference: Exercise 2.8  


#1. Use the function c to create a vector with the average high temperatures in January for 
#Beijing, Lagos, Paris, Rio de Janeiro, San Juan, and Toronto, which are 35, 88, 42, 84, 81, and 30 degrees Fahrenheit. 
#Call the object temp.
temp <- c(Beijing = 35, Lagos = 88, Paris = 42, "Rio de Janeiro" = 84, "San Juan" = 81, Toronto = 30)
#temp <- c(35, 88, 42, 84, 81, 30)

#2. Now create a vector with the city names and call the object city.
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

#3. Use the names function and the objects defined in the previous exercises to associate the temperature data with its corresponding city.
#names(temp) <- city

#4. Use the [ and : operators to access the temperature of the first three cities on the list.
temp[1:3]

#5. Use the [ operator to access the temperature of Paris and San Juan.
temp[c(Paris,"San Juan")]

#6. Use the : operator to create a sequence of numbers 12, 13, 14, ..., 73
12:73

#7. Create a vector containing all the positive odd numbers smaller than 100.
seq(1, 99, by = 2)

#8. Create a vector of numbers that starts at 6, does not pass 55, and adds numbers in increments of 4/7: 6, 6 + 4/7, 6 + 8/7, and so on. 
#How many numbers does the list have? Hint: use seq and length.
s <- seq(6, 55, by = 4/7)
length(s)

#9. What is the class of the following object a <- seq(1, 10, 0.5)?
class(seq(1, 10, 0.5))
numeric

#10. What is the class of the following object a <- seq(1, 10)?
class(seq(1,10))
integer

#11. The class of class(a<-1) is numeric, not integer. R defaults to numeric and to force an integer, you need to add the letter L. 
#Confirm that the class of 1L is integer.
class(a <- 1L)

#12. Define the following vector:
#  x <- c("1", "3", "5") and coerce it to get integers.
x <- c("1", "3", "5")
y <- as.integer(x)
y
