# Topic: Summarizing with dplyr
# Platform reference: Exercise 2.2
# Book reference: Exercise 4.10


library(dplyr)
library(NHANES)
data(NHANES)

# The NHANES data has many missing values. 
# The mean and sd functions in R will return NA if any of the entries of the input vector is an NA. 
# 
# Here is an example:
#   
#   library(dslabs)
#   data(na_example)
#   mean(na_example)
#   #> [1] NA
#   sd(na_example)
#   #> [1] NA
# 
# To ignore the NAs we can use the na.rm argument:
#   
#   mean(na_example, na.rm = TRUE)
#   #> [1] 2.3
#   sd(na_example, na.rm = TRUE)
#   #> [1] 1.22
# Let’s now explore the NHANES data.



# 1. We will provide some basic facts about blood pressure. 
# First let’s select a group to set the standard. We will use 20-to-29-year-old females. 
# AgeDecade is a categorical variable with these ages. 
# Note that the category is coded like ” 20-29”, with a space in front! 
# What is the average and standard deviation of systolic blood pressure as saved in the BPSysAve variable? 
# Save it to a variable called ref.
# Hint: Use filter and summarize and use the na.rm = TRUE argument when computing the average and standard deviation. You can also filter the NA values using filter.

  ref <- NHANES %>%
    filter(
      Gender == "female",
      AgeDecade == " 20-29"  
    ) %>%
    summarize(
      average_bp = mean(BPSysAve, na.rm = TRUE),
      std_dev_bp = sd(BPSysAve, na.rm = TRUE)
    )
  ref

# 2. Using a pipe, assign the average to a numeric variable ref_avg. 
# Hint: Use the code similar to above and then pull.

  ref_avg <- NHANES %>%
    filter(Gender == "female", AgeDecade == " 20-29") %>%
    summarize(average = mean(BPSysAve, na.rm = TRUE)) %>%
    pull(average)
  ref_avg
 
# 3. Now report the min and max values for the same group.
  
  age_range <- NHANES %>%
    filter(Gender == "female", AgeDecade == " 20-29") %>%
    summarize(
      min_age = min(Age, na.rm = TRUE),
      max_age = max(Age, na.rm = TRUE)
    )
  age_range
  
  
# 4. Compute the average and standard deviation for females, but for each age group separately rather than a selected decade as in question 1. 
# Note that the age groups are defined by AgeDecade. Hint: rather than filtering by age and gender, filter by Gender and then use group_by.

  female_bp_stats <- NHANES %>%
    filter(Gender == "female") %>%
    group_by(AgeDecade) %>%
    summarize(
      avg_bp = mean(BPSysAve, na.rm = TRUE),
      sd_bp = sd(BPSysAve, na.rm = TRUE)
    )
  female_bp_stats

  
# 5. Repeat exercise 4 for males.
  
  male_bp_stats <- NHANES %>%
    filter(Gender == "male") %>%
    group_by(AgeDecade) %>%
    summarize(
      avg_bp = mean(BPSysAve, na.rm = TRUE),
      sd_bp = sd(BPSysAve, na.rm = TRUE)
    )
  male_bp_stats

# 6. We can actually combine both summaries for exercises 4 and 5 into one line of code. This is because group_by permits us to group by more than one variable. Obtain one big summary table using group_by(AgeDecade, Gender).

  combined_stats <- NHANES %>%
    group_by(AgeDecade, Gender) %>%  
    summarize(
      avg_bp = mean(BPSysAve, na.rm = TRUE),  
      sd_bp = sd(BPSysAve, na.rm = TRUE),     
      .groups = "drop"  # Optional: Remove grouping structure
    )
  combined_stats
   
# 7. For males between the ages of 40-49, compare systolic blood pressure across race as reported in the Race1 variable. Order the resulting table from lowest to highest average systolic blood pressure.
  
  result <- NHANES %>%
    filter(Gender == "male", AgeDecade == " 40-49") %>%
    group_by(Race1) %>%
    summarize(avg_bp = mean(BPSysAve, na.rm = TRUE)) %>%
    arrange(avg_bp)
  result
  
  