# Remember to go to session tab and set working directory to source files location
# when you are testing any code here

library(shiny)
library(ggplot2)
library(plotly)

#Data frame for plot 1
child_stunting <- read.csv('./data/share-of-children-younger-than-5-who-suffer-from-stunting.csv', stringsAsFactors = FALSE)
child_stunting <- child_stunting %>%
  rename(Prcnt_Prevalence = Prevalence.of.stunting..height.for.age....of.children.under.5.)
#Data frame for graph 2
#Data frame for graph 3

# Define server logic required to draw a histogram
server <- function(input, output) {
  output$plot1 <- renderPlotly({
    plot_1 <- ggplotly(ggplot(
      data = child_stunting %>%
        filter(Entity == input$var_p1),
      mapping = aes_string(x = "Year", y = "Prcnt_Prevalence")) +
      geom_smooth(se = FALSE) +
      labs(
        title = "Percent Of Children Stunted Per Country",
        x = "Year",
        y = "Percent of Children Stunted",
      ))
    print(plot_1)
  })
}