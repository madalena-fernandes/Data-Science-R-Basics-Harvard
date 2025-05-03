# Quiz 2 - part 1
# Platform reference: End Chapter 2


#1. How many individuals are above average height?

avg_height <- mean(heights$height)

ind <- heights$height > avg_height

sum(ind)


#2. How many are above average height AND female?

sum(ind & heights$sex == "Female")


#3. What proportion of individuals are female? (3 significant digits)

prop_female <- mean(heights$sex == "Female")

round(prop_female, 3)


# 4. This question takes you through three steps to determine the sex of the individual with the minimum height.
# 4.a Determine the minimum height in the heights dataset.

min(heights$height)
# 50


# 4.b Use the match() function to determine the index of the first individual with the minimum height.

index <- match(min_height, heights$height)


# 4.c Subset the sex column of the dataset by the index in 4b to determine the individual’s sex.

individual_sex <- heights$sex[index]

# 5. This question takes you through three steps to determine how many of the integer height values between the minimum and maximum heights are not actual heights of individuals in the heights dataset.
# 5.a Determine the maximum height.

max(heights$height)


# 5.b Which integer values are between the maximum and minimum heights? For example, if the minimum height is 10.2 and the maximum height is 20.8, your answer should be x <- 11:20 to capture the integers in between those values. (If either the maximum or minimum height are integers, include those values too.)
# Write code to create a vector x that includes the integers between the minimum and maximum heights in this dataset (as numbers).
# There are multiple ways to solve this problem, but the grader expects you to use the format in the problem description. Your answer should have numbers and a colon (:), and it should not use other functions.

x <- min(heights$height):max(heights$height)
x


# 5.c How many of the integers in x are NOT heights in the dataset?
# Use the sum() and %in% functions in addition to the ! operator.

y <- sum(!(x %in% heights$height))
y


# 6. Using the heights dataset, create a new column of heights in centimeters named ht_cm. 
# Recall that 1 inch = 2.54 centimeters. Save the resulting dataset as heights2.

heights2 <- mutate(heights, ht_cm = height * 2.54)


# 6.a What is the height in centimeters of the 18th individual (index 18)?

height_18cm <- heights$ht_cm[18]


# 6.b What is the mean height in centimeters?

avg_cm <- mean(heights2$ht_cm)


# 7. Create a data frame females by filtering the heights2 data to contain only female individuals.

females <- filter(heights2, sex == "Female")

# 7.a How many females are in the heights2 dataset?

nrow(females)


# 7.b What is the mean height of the females in centimeters?

avg_fm_cm <- mean(females$ht_cm)