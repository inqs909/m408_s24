x <- vector(length = 30)
for (i in 1:30){
  y <- rnorm(n = 1,
             mean = 1,
             sd = 1)
  if (y <0){
    break
  } else {
    x[i] <- y
  }
}
print(x)



# While Loop
N <- 1
i <- 1
x <- c()
while (N < 51){
  y <- rnorm(1)
  if (y > 0){
    x <- c(x, y)
    N <- N + 1
  }
  i <- i + 1
}
print(x)
print(i)  


x <- c(2,3,5,7)

length(which(10 %% x == 0))

x <- 2
y <- 2
N <- 1
while(N < 1001){
  y <- y + 1
  nn <- length(which(y %% x == 0))
  if (nn == 0){
    x <- c(x,y)
  }
  N <- length(x)
}
x





















  
  
  
  
  
  
  
  
  
  


