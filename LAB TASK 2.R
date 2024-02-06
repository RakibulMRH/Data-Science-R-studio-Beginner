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

a <- c(1,2,5,3,6,-2,4)
b <- c("one","two","three")
C <- c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)
a
b
c