library('dplyr')
mydata2 <- read.csv("E:/AIUB/lab4.csv")

Loan = select(mydata2, Loan)

#now use a function to find the missing value in that imported file mydata2
missing_values <- function(x) {
  return(sum(is.na(x)))
}

# Call the function
missing_values(Loan)

# using the library function to do the same
library('naniar')
miss_var_summary(mydata2)
