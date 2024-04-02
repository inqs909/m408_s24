names(letters) <- 1:26
letters
letters[c(9,19,1,1,3)]
x <- matrix(1:40, nrow = 4)
x[c(1,2),c(1,2,3)]
x[3:4,8:10]
mtcars[3:8,"mpg"]
toy_list <- list(x = letters,
                 y = mtcars,
                 z = list(x = diag(rep(1, 5)),
                                   y = matrix(1:40, nrow = 5),
                                   z = letters))
toy_list[['x']]
toy_list$z$y
toy_list[[3]][[2]]

4 > 1:8

1:8 > 4


x <- sample(-10:10,1)
if (x > 0 ){
  print("Positive")
} else if (x == 0) {
  print("Zero")
} else {
  print("Negative")
}
print(x)


x <- sample(-10:10,1)
if (x > 0 ){
  stop("This is an error")
  print("Positive")
} else if (x == 0) {
  print("Zero")
} else {
  stop("This is an error")
  print("Negative")
}
print(x)


x <- sample(-10:10,1)
if (x > 0 ){
  try(stop("This is an error"))
  print("Positive")
} else if (x == 0) {
  print("Zero")
} else {
  try(stop("This is an error"))
  print("Negative")
}
print(x)


x <- sample(-10:10,1)
if (x > 0 ){
  try(stop("This is an error"), silent = T)
  print("Positive")
} else if (x == 0) {
  print("Zero")
} else {
  try(stop("This is an error"), silent = T)
  print("Negative")
}
print(x)


x <- rnorm(100)
mean(x)


n <- length(x)


x[1] + x[2] + x[3] + x[4] + x[5] + x[6]
sum(x)
y <- 0

for (i in 1:n){
  y <- y + x[i]  
}

print(y)
y / n
mean(x)




x <- rnorm(100)
var(x)
n <- length(x)
xbar <- mean(x)

(x[1]-xbar)^2 + (x[2]-xbar)^2 + (x[3]-xbar)^2 + (x[4]-xbar)^2


y <- vector(length = n)

for (i in 1:n){
  y[i] <- (x[i] - xbar)^2
}

sum(y)/(n-1)
var(x)












