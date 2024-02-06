#looping while
i <- 1
while (i < 6) {
  print (i)
  i <- i + 1
  if (i==4){
    break
  }
}

i <- 0
while (i < 6) {
  print (i)
  i <- i + 1
  if (i==3){
    next
  }
  print(i)
}

#looping for

for (x in 1:2){
  for(y in 1:3){
    print (x*y)
  }
}

#vector element index starts from 1
a <- c(1,2,5,3,6,-2,4) 
b <- c("one","two","three")
C <- c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)
cat(a,b,c)
cat(a[1:4])
cat(a[c(1,4)])
Name <- c("hello","world")
nchar(Name)
Name <- "Hello World"
nchar(Name)

X <- c(12,4,5)
X+2
X <- sort(X) #ascending order by default

Y <- c("B", "C", "D")
sort(Y,decreasing = TRUE)


























