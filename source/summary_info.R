?read.csv
library(readr)
library(dplyr)
global_hunger_index <- read_csv("data/global-hunger-index.csv",
                                col_types = cols(Year = col_number(),
                                                 `Global Hunger Index (2021)` = col_number()))
View(global_hunger_index)

num_severely_food_insecure <- read_csv("data/number-of-people-severely-food-insecure.csv",
                                                 col_types = cols(Year = col_number(),
                                                                  `Number of severely food insecure people (million) (3-year average) | 00210071 || Value | 006132 || millions` = col_number()))
View(num_of_people_severely_food_insecure)

prevalence_undernourishment <- read_csv("data/prevalence-of-undernourishment.csv", 
                                        col_types = cols(Year = col_number()))
View(prevalence_undernourishment)

percent_children_underweight <- read_csv("data/share-of-children-underweight.csv")
View(percent_children_underweight)

children_under_5_stunting <- read_csv("data/share-of-children-younger-than-5-who-suffer-from-stunting.csv")
View(children_under_5_stunting)

children_wasting <- read_csv("data/share-of-children-with-a-weight-too-low-for-their-height-wasting.csv")
View(children_wasting)

#joined all Data here:
all_data <- full_join(global_hunger_index, num_severely_food_insecure)

all_data <- left_join(all_data, prevalence_undernourishment)
all_data <- left_join(all_data, percent_children_underweight)
all_data <- left_join(all_data, children_under_5_stunting)
all_data <- left_join(all_data, children_wasting)

#some "entities" are regions, rather than countries. may need to take out/separate

# A source file that takes in a dataset and returns a list of info about it:
summary_info <- list()
summary_info$num_observations <- nrow(all_data)
summary_info$num_features <- ncol(all_data)
summary_info$GHI_max_value = all_data %>%
  filter(`Global Hunger Index (2021)` == max(`Global Hunger Index (2021)`, na.rm = T)) %>%
  select(Entity)

summary_info$GHI_min_value = all_data %>%
  filter(`Global Hunger Index (2021)` == min(`Global Hunger Index (2021)`, na.rm = T)) %>%
  select(Entity)

summary_info$wasting_max_value = all_data %>%
  filter(`Prevalence of wasting, weight for height (% of children under 5)` == max(`Prevalence of wasting, weight for height (% of children under 5)`, na.rm = T)) %>%
  select(Entity)

summary_info$wasting_min_value = all_data %>%
  filter(`Prevalence of wasting, weight for height (% of children under 5)` == min(`Prevalence of wasting, weight for height (% of children under 5)`, na.rm = T)) %>%
  select(Entity)

summary_info$stunting_max_value = all_data %>%
  filter(`Prevalence of stunting, height for age (% of children under 5)` == max(`Prevalence of stunting, height for age (% of children under 5)`, na.rm = T)) %>%
  select(Entity)

summary_info$stunting_min_value = all_data %>%
  filter(`Prevalence of stunting, height for age (% of children under 5)` == min(`Prevalence of stunting, height for age (% of children under 5)`, na.rm = T)) %>%
  select(Entity)

summary_info$uniq_Entities = length(unique(all_data$Entity))

summary_info$date_range = c(max(all_data$Year), min(all_data$Year))

summary_info$earliest_date = min(all_data$Year)
summary_info$recent_date = max(all_data$Year)


