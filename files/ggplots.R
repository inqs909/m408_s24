finder <- function(x,y){
  m <- (y-10.355) / (x - 3.686) 
  b <- m * -3.686 + 10.355 
  return(c(m,b))
}

xx <- c(8:18, 17:11, 12:16, 15:13, 14, 15,14)
wk <- sapply(xx, finder, x = 6)



camcorder::gg_record(
  dir = file.path("img"),
  device = "png",
  width = 4.5,
  height = 5.8,
  units = "in",
  dpi = 300
)


i <- 29
df |> 
  ggplot(aes(x = x, y = y)) + 
    geom_point() +
    # stat_smooth(method = "lm") +
    geom_abline(slope = wk[1,i],
                intercept = wk[2,i])


df |> 
  ggplot(aes(x = x, y = y)) + 
  geom_point() +
  stat_smooth(method = "lm", se = F)

camcorder::gg_playback(
  name = file.path("img/6b1.gif"),
  first_image_duration = 4,
  last_image_duration = 20,
  frame_duration = .25
)
