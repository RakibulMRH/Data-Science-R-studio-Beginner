library(tibble)

patientID <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")
patientdata <- data.frame(patientID, age, diabetes, status)

bloodGroup <- c("B+", "A-", "AB-", "O-")
patientdata <- add_column(patientdata, bloodGroup, .after = "age")

print(patientdata)

new_patient <- data.frame(patientID = 5, age = 30, bloodGroup="O-", diabetes = "Type2", status = "Improved")

patientdata <- rbind(patientdata, new_patient)

patientdata[c("diabetes","status")]
#factor
patientdata$diabetes <- as.factor(patientdata$diabetes)
patientdata$status <- as.factor(patientdata$status)


#list
patientdata <- add_column(patientdata, new_column = list(1,2,3,4,5,6), .after = "status")
print(patientdata)

g <- "MyFirstList"
h <- c(25,26,18,39)
j <- matrix(1:10, nrow = 5)
k <- c("one", "two", "three")
mylist <- list(title = g, ages = h, j, k)

mylist

#delete diabetes column from patientdata
patientdata <- subset(patientdata, select = -(diabetes))

