library("dplyr")
library("ggmap")
library("ggplot2")

# Imported the data

global_hunger_index_csv <- read.csv(
  "https://github.com/info201a-au2022/project-group-8-section-ag/raw/main/data/global-hunger-index.csv")

# Renamed some columns

colnames(global_hunger_index_csv)[colnames(global_hunger_index_csv) == 
                                    "Global.Hunger.Index..2021."] ="Gh_index"
colnames(global_hunger_index_csv)[colnames(global_hunger_index_csv) == 
                                    "X411773.annotations"] ="Annotations"

# Created a dataframe containing the data for the top 10 countries with most
# child stunting due to hunger

Malawi_df <- filter(
  global_hunger_index_csv, Entity == "Malawi")

India_df <- filter(
  global_hunger_index_csv, Entity == "India")

Nepal_df <- filter(
  global_hunger_index_csv, Entity == "Nepal")

Yemen_df <- filter(
  global_hunger_index_csv, Entity == "Yemen")

Madagascar_df <- filter(
  global_hunger_index_csv, Entity == "Madagascar")

Eritrea_df <- filter(
  global_hunger_index_csv, Entity == "Eritrea")

Bangladesh_df <- filter(
  global_hunger_index_csv, Entity == "Bangladesh")

Guatemala_df <- filter(
  global_hunger_index_csv, Entity == "Guatemala")

Timor_df <- filter(
  global_hunger_index_csv, Entity == "Timor")

Zambia_df <- filter(
  global_hunger_index_csv, Entity == "Zambia")

Top_10_df <- rbind(Malawi_df, India_df, Nepal_df, Yemen_df, Madagascar_df, 
                   Eritrea_df, Bangladesh_df, Guatemala_df, Timor_df, Zambia_df)

# Created the graph

Top_10_graph <- ggplot(data = Top_10_df) + 
  geom_line(mapping = aes(x = Year, y = Gh_index, group = Entity, 
                          color = Entity), size = 1) + 
  labs(y = "Global Hunger Index", x = "Year", title = 
         "Global Hunger Index Over Time for the Top Ten ”Hungriest” Nations")
