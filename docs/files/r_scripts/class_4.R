x <- matrix(rnorm(1000), nrow = 10)
# Answer
apply(x, 2, sd)

y <- x[,1]
z <- 0
for (ii in 1:10){
  z <- z + (y[ii]-mean(y))^2
}
sqrt(z/(9))
sd(y)


a <- vector(length = 100)


for(i in 1:100){
  y <- x[,i]
  z <- 0
  for (ii in 1:10){
    z <- z + (y[ii]-mean(y))^2
  }
  a[i] <- sqrt(z/(9))
  }
a - apply(x, 2, sd)

dim(x)


outen <- vector(length = 10)

for (i in 1:10) {
  m <- 0
  for (j in 1:100) {
    m <- m + x[i,j]
  }
  outen[i] <- m/100
}
print(outen)

apply(x, 1, mean)



library(MASS)
leuk

for (i in 1:3){
  y <- leuk[,i]
  if (is.factor(y[1])){
    next
  } else {
    print(var(y))
  }
}


for (i in 1:5){
  y <- iris[,i]
  if (is.factor(y[1])){
    next
  } else {
    print(var(y))
  }
}

