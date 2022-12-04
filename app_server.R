# Remember to go to session tab and set working directory to source files location
# when you are testing any code here

library(shiny)

#Data frame for graph 1
child_stunting <- read.csv(
  './data/share-of-children-younger-than-5-who-suffer-from-stunting.csv', 
  stringsAsFactors = FALSE)
child_stunting <- child_stunting %>%
  rename(Prevalence.of.stunting..height.for.age....of.children.under.5. = 'Prevalence_prcnt')
#Data frame for graph 2
#Data frame for graph 3

# Define server logic required to draw a histogram
server <- function(input, output) {
  output$graph_1 <- renderPlot({
    child_stunting <- child_stunting %>%
      filter(Entity = input$var_g1)
    
    
    # Use the filtered data set to create a ggplot2 scatter plot with the
    # user-select column on the x-axis, and the price on the y-axis,
    # and encode the "cut" of each diamond using color
    # Save your plot as a variable.
    plot_1 <- ggplot(
      data = child_stunting,
      mapping = aes_col(x = "year", y = "Prevalence_prcnt")
    )
    # Finally, if the "trendline" checkbox is selected, you should add (+)
    # a geom_smooth geometry (with `se=FALSE`) to your plot
    # Hint: use an if statement to see if you need to add more geoms to the plot
    # Be sure and return the completed plot!
    plot_1
  })
}