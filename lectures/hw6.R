library(ISLR2)
library(MASS)
library(tidyverse)
select <- dplyr::select

## Problem 1 ----------
# 1
names(Weekly)
summary(Weekly)
plot(Weekly)

# 2
training <- Weekly |> filter(Year >= 1990 & Year <=2008)
test <- training <- Weekly |> filter(!(Year >= 1990 & Year <=2008))
xlogit <- training |> glm(Direction ~ Lag2, 
                        data = _, 
                        family = binomial())
predictions <- ifelse(round(predict(xlogit, training, type = "response")) == 1, "Up", "Down")
table(training$Direction, predictions)
438/length(predictions)

# 3
xlda <- training |> lda(Direction ~ Lag2,
                        data = _)
xlda_predict <- xlda |> predict(test)
table(test$Direction, xlda_predict$class)

# 4
xqda <- training |> qda(Direction ~ Lag2,
                        data = _)
xqda_predict <- xqda |> predict(test)
table(test$Direction, xqda_predict$class)

# 5
library(e1071)
xnb <- training |>  naiveBayes(Direction ~ Lag2, 
                                data = _)
xnb_predict <- xnb |> predict(test) 
table(test$Direction, xnb_predict)

# 6
# Logistic Regression or LDA

## Problem 2 ----------

# 1
Auto <- Auto |> mutate(mpg01 = ifelse(mpg > median(mpg), 1, 0))
sampler <- sample(1:392, 196)


# 2
Auto |> group_by(mpg01) |> select(-name) |> 
summarise_all(list(mean = mean, sd = sd))

# 3
training <- Auto[sampler, ] |> select(-name)
test <- Auto[-sampler,] |> select(-name)

# 4
xlda <- training |> lda(mpg01 ~ .,
                        data = _)
xlda_predict <- xlda |> predict(test)
table(test$mpg01, xlda_predict$class)

# 5
xqda <- training |> qda(mpg01 ~ .,
                        data = _)
xqda_predict <- xqda |> predict(test)
table(test$mpg01, xqda_predict$class)

# 6
xnb <- training |>  naiveBayes(mpg01 ~ ., 
                               data = _)
xnb_predict <- xnb |> predict(test) 
table(test$mpg01, xnb_predict)
