plot(mtcars$wt, mtcars$mpg)
mtcars$mpg[mtcars$wt>3] |> mean()

mtcars$mpg[mtcars$wt>3] |> var()
mtcars$mpg[mtcars$wt<=3] |> var()
# MSE = 38

sp <- 4
mtcars$mpg[mtcars$wt>sp] |> var()
mtcars$mpg[mtcars$wt<=sp] |> var()
# MSE =  41

sp <- 3.3
mtcars$mpg[mtcars$wt>sp] |> var()
mtcars$mpg[mtcars$wt<=sp] |> var()
# 33