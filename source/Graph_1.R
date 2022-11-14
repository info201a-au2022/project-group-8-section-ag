library("dplyr")
library("ggmap")
library("ggplot2")

child_stunting_under_5 <- read.csv(
  "https://raw.githubusercontent.com/info201a-au2022/project-group-8-section-ag/main/data/share-of-children-younger-than-5-who-suffer-from-stunting.csv")

colnames(child_stunting_under_5)[colnames(child_stunting_under_5) == "Prevalence.of.stunting..height.for.age....of.children.under.5."] ="Prevalence_prcnt"

ggplot(data = child_stunting_under_5) +
  geom_col(mapping = aes(x = Entity, y = Prevalence_prcnt))

prcnt_per_country <- child_stunting_under_5 %>%
  group_by(Entity) %>%
  summarise(sum.prcnt = sum(Prevalence_prcnt))

nrow_per_country <- child_stunting_under_5 %>%
  group_by(Entity) %>%
  count(Entity)

avg_stunting_percountry <- left_join(
  prcnt_per_country,
  nrow_per_country,
  by = NULL
  ) %>%
  mutate(avg_prevalence = sum.prcnt/n)

colnames(avg_stunting_percountry)[colnames(avg_stunting_percountry) == "Entity"] ="Country"

avg_child_stunting_per_country <- ggplot(data = avg_stunting_percountry) +
  geom_col(mapping = aes(x = Country, y = avg_prevalence, color = Country))

## Note: need to make bar titles legible... potentially use color? Or would that be bad?
