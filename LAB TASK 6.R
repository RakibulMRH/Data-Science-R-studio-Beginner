library('dplyr')
mydata3 <- read.csv("E:/AIUB/Dataset_midterm_Section(C).csv")
which(is.na(mydata3$Loan))
mydata3<- na.omit(mydata3)