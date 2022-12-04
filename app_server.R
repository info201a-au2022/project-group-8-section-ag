# Remember to go to session tab and set working directory to source files location
# when you are testing any code here

library(shiny)

#These are the loaded dat frames for the graphs
#global_hunger <- read.csv('./data/global-hunger-index.csv', 
#                          stringsAsFactors = FALSE)
#food_insecure <- read.csv('./data/number-of-people-severely-food-insecure.csv',
#                                 stringsAsFactors = FALSE)
#undernourishment <- read.csv('./data/prevalence-of-undernourishment.csv',
#                             stringsAsFactors = FALSE)
#children_underweight <- read.csv('./data/share-of-children-underweight.csv',
#                                 stringsAsFactors = FALSE)
#children_low_weight <- read.csv(
#  './data/share-of-children-with-a-weight-too-low-for-their-height-wasting.csv',
#  stringsAsFactors = FALSE)
#child_stunting <- read.csv(
#  './data/share-of-children-younger-than-5-who-suffer-from-stunting.csv',
#  stringsAsFactors = FALSE)

#Here is the source for graph 1
source('./source/Graph_1.R')

#Here is the code for graph 2


#Here is the code for graph 3


# Define server logic required to draw a histogram
server <- shinyServer(function(input, output) {

    output$Graph_1 <- renderPlot({

        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white',
             xlab = 'Waiting time to next eruption (in mins)',
             main = 'Histogram of waiting times')

    })
    
    output$Graph_1 <- renderPlotly({
      x <- avg_stunting_percountry[Country]
      
      return(build_scatter(joined_data, input$state_picked))
    })

})



#colnames(child_stunting)[colnames(child_stunting) 
#== "Prevalence.of.stunting..height.for.age....of.children.under.5."] ="Prevalence_prcnt"
#prcnt_per_country <- child_stunting %>%
#  group_by(Entity) %>%
#  summarise(sum.prcnt = sum(Prevalence_prcnt))
#nrow_per_country <- child_stunting %>%
#  group_by(Entity) %>%
#  count(Entity)
#avg_stunting_percountry <- left_join(
#  prcnt_per_country,
#  nrow_per_country,
#  by = "Entity"
#) %>%
#  mutate(Average_Percent_of_Children_Stunted = sum.prcnt/n)