2+2

sqrt(3)
exp(3)
log(53)
log(53, base = 10)
log(53, 10)
log(10, 53)
sin(3)
sin(3*pi)
sinpi(3)

TRUE
FALSE
T 
F

NA
NaN
NULL


x <- 1:8
as.matrix(x)

y <- matrix(1:20, nrow = 5)

mtcars


z <- list(1:40,
          matrix(1:20, nrow = 5),
          mtcars)

z <- list(x = 1:40,
          y = matrix(1:20, nrow = 5),
          df = mtcars)

z$y
z$df
z$x

# mtcars %>% select(mpg, hp)



