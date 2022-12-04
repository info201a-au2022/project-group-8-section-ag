# Remember to go to session tab and set working directory to source files location
# when you are testing any code here

library(shiny)

#Data frame for graph 1
child_stunting <- read.csv('./data/share-of-children-younger-than-5-who-suffer-from-stunting.csv', stringsAsFactors = FALSE)
child_stunting <- child_stunting %>%
  rename(Prevalence_prcnt = Prevalence.of.stunting..height.for.age....of.children.under.5.)
#Data frame for graph 2
#Data frame for graph 3

# Define server logic required to draw a histogram
server <- function(input, output) {

  output$graph_1 <- renderPlot({
    child_stunting <- child_stunting %>%
      filter(Entity = input$var_g1)
    plot_1 <- ggplot(
      data = child_stunting,
      mapping = aes_col(x = "year", y = "Prevalence_prcnt")
    )
    return(plot_1)
  })
}