# Quiz 2 - part 1
# Platform reference: End Chapter 2


#8. Which line of code will find the index of the row corresponding to Massachusetts in the murders dataset?
 
# which(murders$state == “Massachusetts”)
# match(c(“Massachusetts”), murders$state)
# c(“Massachusetts”) %in% murders$state
# which(murders$state = “Massachusetts”)


#9. Which line of code will correctly filter the murders dataset to show only the Northeast region of the US?
  
# --> filter(murders, region == “Northeast”)
# --> murders %>% filter(region == “Northeast”)
# murders %>% select(region == “Northeast”)
# murders %>% filter(murders, region == “Northeast”)
# select(murders, region == “Northeast”)


#10. Which line of code will return TRUE for elements of vector ind that are missing from the murders dataset?
  
# ind %in% murders$state
# --> !ind %in% murders$state
# ind !%in% murders$state
# !match(ind, murders$state)
# match(!ind, murders$state)