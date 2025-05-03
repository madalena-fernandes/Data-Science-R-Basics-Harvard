# 1.

a <- 2
b <- -1
c <- -4

(-b + sqrt(b^2 - 4*a*c) ) / ( 2*a )
(-b - sqrt(b^2 - 4*a*c) ) / ( 2*a )

# 2. Use R to compute log base 4 of 1024. 
#You can use the help() function to learn how to use arguments to change the base of the log() function.

log(1024, 4)

# 3. Install the dslabs package if you have not done so:

  #install.packages("dslabs")
  #Note that any time you get an error that a package is not found, try installing that package.

  #The movielens dataset in the dslabs package includes data on a variety of movies and their rating by a
  #particular user. Load the movielens dataset:
  
    #library(dslabs)
    #data(movielens)
  #Begin your exploration of this dataset by looking at the structure of the dataset and variable types.

library(dslabs)
data(movielens)

# 3.a. How many rows are in the dataset?

movielens$movieId

# 3.b. How many different variables are in the dataset?

# 7


#3.c. What is the variable type of title ?
  
  #It is a text (txt) variable

  #It is a chronological (chr) variable

  #It is a string (str) variable

  #It is a numeric (num) variable

  #It is an integer (int) variable

  #It is a factor (Factor) variable

  # --> It is a character (chr) variable. A: str(movielens)

# 3.d.  What is the variable type of genres ?
  
  #It is a text (txt) variable

  #It is a chronological (chr) variable

  #It is a string (str) variable

  #It is a numeric (num) variable

  #It is an integer (int) variable

  # --> It is a factor (Factor) variable. A: str(movielens)

  #It is a character (chr) variable


# 4. We already know we can use the levels() function to determine the levels of a factor. 
# A different function, nlevels(), may be used to determine the number of levels of a factor.

# Use this function to determine how many levels are in the factor genres in the movielens data frame.
levels <- nlevels(movielens$genres)
levels

# 5. Let's say you have questions about what the mean() function does.

# Which of the following can you type in R to learn more about this function?
#Select ALL that apply.

  # --> help(mean)
  # --> ?mean


