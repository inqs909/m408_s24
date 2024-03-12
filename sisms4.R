library(tidyverse)
x <- rnorm(1000, 8)
y <- 3 + 2 * log(x) + rnorm(1000, sd = sqrt(2))
df <- tibble(x, y)
x_lm <- df |> lm(y ~ x, data = _)
df_resid <- tibble(obs = 1:nrow(x_lm$model),
                   x_lm$model, 
                   resid = resid(x_lm),
                   fitted = fitted(x_lm),
                   sresid = rstandard(x_lm),
                   hatvals = hatvalues(x_lm),
                   jackknife =  rstudent(x_lm),
                   cooks = cooks.distance(x_lm)
)


df_resid |> 
  ggplot(aes(fitted, resid)) + geom_point() +
  geom_hline(yintercept = 0) +
  geom_smooth(se = F) +
  theme_bw()

df_resid |> 
  ggplot(aes(x, resid)) + geom_point() +
  geom_hline(yintercept = 0) +
  stat_smooth(se = F) +
  theme_bw()


n <- 1000
x <- rnorm(n, 8, sd = 2)
yp <- 3 + 2 * x
err <- sapply(yp, function(i){rnorm(1, sd = abs(i)^2)}) 
y <- yp + err
df <- tibble(x, y)


x_lm <- df |> lm(y ~ x, data = _)
df_resid <- tibble(obs = 1:nrow(x_lm$model),
                   x_lm$model, 
                   resid = resid(x_lm),
                   fitted = fitted(x_lm),
                   sresid = rstandard(x_lm),
                   hatvals = hatvalues(x_lm),
                   jackknife =  rstudent(x_lm),
                   cooks = cooks.distance(x_lm)
)


df_resid |> 
  ggplot(aes(fitted, resid)) + geom_point() +
  geom_hline(yintercept = 0) +
  geom_smooth(se = F) +
  theme_bw()

df_resid |> 
  ggplot(aes(x, resid)) + geom_point() +
  geom_hline(yintercept = 0) +
  stat_smooth(se = F) +
  theme_bw()


n <- 1000
x <- rnorm(n, 8, sd = 2)
y <- 3 + 2 * x + rgamma(n, 2)
df <- tibble(x, y)
x_lm <- df |> lm(y ~ x, data = _)
df_resid <- tibble(obs = 1:nrow(x_lm$model),
                   x_lm$model, 
                   resid = resid(x_lm),
                   fitted = fitted(x_lm),
                   sresid = rstandard(x_lm),
                   hatvals = hatvalues(x_lm),
                   jackknife =  rstudent(x_lm),
                   cooks = cooks.distance(x_lm)
)


df_resid |> 
  ggplot(aes(sample = resid)) + 
  stat_qq() +
  stat_qq_line() +
  theme_bw()

df_resid |> 
  ggplot(aes(sample = resid)) + 
  stat_qq(distribution = stats::qgamma,
          dparams = list(shape = 2)) +
  stat_qq_line(distribution = stats::qgamma,
               dparams = list(shape = 2)) +
  theme_bw()
