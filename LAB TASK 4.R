var1 = readline(prompt = "Enter any value: ")
var2 = readline(prompt = "Enter any number: ")
var2 = as.integer(var2)
print(var1)
print(var2)

x = scan()
print(x)

d= scan (what= double())
a= scan(what =" ")
c= scan(what = character())
print(x)
print (d)
print(s)

edit()

mydata <- data.frame(age = numeric(0),
                     gender = character(0),
                     weight = numeric(0))
mydata <- edit(mydata)

#mydataframe <- read.csv(file, header = logical_value, sep = "delimiter")
mydata2 <- read.csv("E:/AIUB/lab4.csv")
#add a new column gender to mydata2
mydata2$gender <- factor ()
mydata2 <- read.csv("E:/AIUB/lab4.csv")
Gender <- c("Male", "Female", "Male", "Male", "Female", "Male", "Female","Female","Male")

mydata2 <- cbind(mydata2, Gender = Gender)
# Add the gender column to mydata2
mydata2$Gender <- factor(mydata2$Gender,
                    levels = c("Male", "Female"),
                    labels = c(1,2))
num_rows <- nrow(mydata2)

# Make sure the length of Gender matches the number of rows
if (length(Gender) == num_rows) {
  # Adding a new column "Gender" after "age" using cbind
  mydata2 <- cbind(mydata2, Gender = Gender)
  
  # Print the updated data frame
  print(mydata2)
} else {
  print("Number of rows in Gender does not match the data frame.")
}

str(mydata2)

# Calculate the standard deviation of a specific column (e.g., attribute_column)
standard_deviation <- sd(mydata2$Loan)
library("dplyr")

# Print the standard deviation
print(standard_deviation)
mydata2 %>% summarise_if(is.numeric,sd)

library("matrixStats")
mydata2$score = rowSds(as.matrix(mydata2[,c(2,3)]))

