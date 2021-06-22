library(tidyverse)
library(ggthemes)
car_plot <- mtcars %>%
  select(mpg, wt) %>%
  ggplot(aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", formula = y~x, se = FALSE) +
  theme_clean() +
  labs(title = "Fuel Efficiency of Cars by Weight",
       subtitle = "Heavier cars are less fuel efficient",
       x = "Weight in Thousands (lb)",
       y = "MPG",
       caption = "Henderson and Vellerman (1981)")
write_rds(car_plot, "car-plot.rds")
