library('dplyr')
mydata3 <- read.csv("E:/AIUB/lab4.csv")
which(is.na(mydata3$Loan))
mydata3<- na.omit(mydata3)