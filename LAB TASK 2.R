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
mymatrix <- matrix(1:20,nrow = 5, ncol = 4, TRUE)
mymatrix

cells <- c(1:4)
rnames <- c("R1","R2")
cnames <- c("C1", "C2")
mymatrix <- matrix(cells, nrow =2, ncol =2, byrow = FALSE, dimnames = list(rnames,cnames))
print(mymatrix[1,1])
cat(mymatrix[1,1],mymatrix[2,2], sep =" " )
cat(mymatrix[c(1,1),c(2,2)], sep =" " )

mymatrix2 <- matrix (1:20, nrow = 5, ncol = 4)
cat(mymatrix2[1,c(2,3)], sep =" " )

#Array

myarray <- array(1:24,c(2,3,2))
myarray[1,2,1]




















