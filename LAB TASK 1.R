1+1       #Simple Arithmetic
2+3*4     #Operator precedence
3^2       #Exponentiation
sqrt(10)  #Basic mathematical functions are available
pi        #The constant pi is predefined

55L #DEFINE INTEGER VALUE

x <- 1    #"<-" Automatically defines data type and declares as a variable
y <- 3
z <- 4
x         #The value will be printed post execution
y
z
x*y*z

String <- "Hello World"
strsplit(String, split="")
tolower(String)
toupper(String)
nchar(String)

str1 <- "Hello"
str2 <- "World!"
cat(str1,str2) #add an space in between strings
paste(str1,str2)  #add an space in between strings
paste(str1,str2, sep = '') #No space in between strings
cat(str1,str2,sep = '') #No space in between strings
paste0(str1,str2) #No space in between strings


str <- "Hi this is a test to see if line
break works or not. If works 
This is would be the 3rd line hehe"
str
cat(str)

str3 <- "sad/sadasdad/dasd"
str3
cat(str3)

a<-10
b<-50
if (a>b)
{
  print("a>b")
}else if (a<b) #start else right from the } of if's closing bracket
{
  print("a<b")
}else
{
  print("error!")
}
 #check this from slide ifelse(score>0.5,) & switch case
