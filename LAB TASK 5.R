library('dplyr')
mydata2 <- read.csv("E:/AIUB/lab4.csv")

Loan = select(mydata2, Loan)

#now use a function to find the missing value in that imported file mydata2
missing_values <- function(x) {
  return(sum(is.na(x)))
}

# Call the function
missing_values(mydata2)

# using the library function to do the same
library('naniar')
miss_var_summary(mydata2)

#now find the row number of the missing value using the library function previous one didnt work
library('dplyr')

# Find the row number of the missing value
missing_row <- mydata2 %>% filter_all(any_vars(is.na(.)))
print(missing_row)
#this doesnt show the row number of the missing value
#now use the library function to do the same
library('naniar')
miss_row_summary(mydata2)
#this also doesnt show the row number of the missing value
#now use the library function to do the same
library('naniar')
missing_row <- mydata2 %>% filter_all(any_vars(is.na(.)))
print(missing_row)
na.omit(mydata2)

colSums(is.na(mydata2))
rowSums(is.na(mydata2))