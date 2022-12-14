# Remember to go to session tab and set working directory to source files location
# when you are testing any code here

library(shiny)
library(ggplot2)
library(plotly)
library(dplyr)

#Data frame for plot 1
child_stunting <- read.csv('./data/share-of-children-younger-than-5-who-suffer-from-stunting.csv', stringsAsFactors = FALSE)
child_stunting <- child_stunting %>%
  rename(Prcnt_Prevalence = Prevalence.of.stunting..height.for.age....of.children.under.5.)
#Data frame for graph 2
ppl_food_insecure <- read.csv('./data/number-of-people-severely-food-insecure.csv', stringsAsFactors = FALSE)
ppl_food_insecure <- ppl_food_insecure %>%
  rename(Millions_Food_Insecure = Number.of.severely.food.insecure.people..million...3.year.average....00210071....Value...006132....millions)
#Data frame for graph 3
hunger_index <- read.csv('./data/global-hunger-index.csv', stringsAsFactors = FALSE)
hunger_index <- hunger_index %>%
  rename(global_hunger_index = Global.Hunger.Index..2021.)



# Define server logic required to draw a histogram
server <- function(input, output) {
  output$plot1 <- renderPlotly({
    plot_1 <- ggplotly(ggplot(
      data = child_stunting %>%
        filter(Entity == input$var_p1),
      mapping = aes_string(x = "Year", y = "Prcnt_Prevalence")) +
        geom_point() +
      geom_smooth(se = FALSE) +
      labs(
        title = "Percent Of Children Stunted Per Year",
        x = "Year",
        y = "Percent of Children Stunted",
      ) + ylim(0, 75) + xlim(1983, 2020)
      )
    print(plot_1)
  })
  output$plot2 <- renderPlotly({
    plot_2 <- ggplotly(ggplot(
      data = ppl_food_insecure %>%
        filter(Entity == input$var_p2),
      mapping = aes_string(x = "Year", y = "Millions_Food_Insecure")) +
        geom_col() +
        labs(
          title = "Millions Of Food Insecure People Each Year",
          x = "Year",
          y = "Millions Of Food Insecure People",
    ) + ylim(0, 9)
    )
    print(plot_2)
  })
  output$plot3 <- renderPlotly({
    plot_3 <- ggplotly(ggplot(
      data = hunger_index %>%
        filter(Entity == input$var_p3),
      mapping = aes_string(x = "Year", y = "global_hunger_index")) +
        geom_area() +
        labs(
          title = "Global Hunger Index Per Year",
          x = "Year",
          y = "Global Hunger Index",
    ) + ylim(0, 70)
    ) 
    print(plot_3)
  })
  output$graph_1 <- renderPlotly({
    most10_child_stunting
  })
  output$graph_2 <- renderPlotly({
    food_insecurity
  })
  output$graph_3 <- renderPlotly({
    Top_10_graph
  })
}