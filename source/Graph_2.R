library("dplyr")
library("ggmap")
library("ggplot2")

num_ppl_food_insecure <- read.csv("https://raw.githubusercontent.com/info201a-au2022/project-group-8-section-ag/main/data/number-of-people-severely-food-insecure.csv")

colnames(num_ppl_food_insecure)[colnames(num_ppl_food_insecure) == "Number.of.severely.food.insecure.people..million...3.year.average....00210071....Value...006132....millions"] ="Millions_Of_Food_Insecure_People"

food_insecurity <- ggplot(data = num_ppl_food_insecure) +
  geom_smooth(mapping = aes(x = Year, y = Millions_Of_Food_Insecure_People)) + 
  labs(y = "Millions Of Food Insecure People", x = "Year", title = 
         "Millions Of Food Insecure People Globally Over Time")
