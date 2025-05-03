# Topic: Vector Arithmetic  
# Platform reference: Exercise 1.6  
# Book reference: Exercise 2.12  


library(dslabs)
data(murders)

# 1. Previously we created this data frame:
  
  temp <- c(35, 88, 42, 84, 81, 30)
  city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
  city_temps <- data.frame(name = city, temperature = temp)
  
  #Remake the data frame using the code above, but add a line that converts the temperature from Fahrenheit to Celsius. 
  #The conversion is C = 5/9 * (F - 32)
  
  celsius <- round((5/9) * (temp - 32),1)
  city_temps <- data.frame(name = city, temperature_f = temp, temperature_c = celsius)
  city_temps
  
# 2. What is the following sum  
  # 1 + 1/(2^2) + 1/(3^2) + ... 1/(100^2)?
  # Hint: thanks to Euler, we know it should be close to π^2/6
  
  total <- sum(1 / (1:100)^2) 
  total
  
  
# 3. Compute the per 100,000 murder rate for each state and store it in the object murder_rate. 
# Then compute the average murder rate for the US using the function mean. What is the average?

  murder_rate <- (murders$total / murders$population) * 100000
  average <- mean(murder_rate)
  average
  
  
  