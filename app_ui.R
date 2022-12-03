library(shiny)

#You will need an intro page that shows up first
#Followed by 3 interactive pages based off your graph
#A summary takeaway page
# A report page



intro_panel <- tabPanel(
  "Introduction",
  titlePanel("Introduction")
  )

first_int_panel <- tabPanel(
  "First Interactive Panel",
  titlePanel("First Interactive Panel"),
  selectInput(
    "var_graph1",
    label = "Graph 1 Variable",
    choices = list(
      "Population" = "population",
      "Votes" = "votes"
    )
  )
)


second_int_panel <- tabPanel(
  "Second Interactive Panel",
  titlePanel("Second Interactive Panel")
)

third_int_panel <- tabPanel(
  "Third Interactive Panel",
  titlePanel("Third Interactive Panel")
)

summary_panel <- tabPanel(
  "Summary Takeaways Panel",
  titlePanel("Summary Takeaways Panel")
)

report_panel <- tabPanel(
  "Report Panel",
  titlePanel("Report Panel"),
)

# Define UI for application that draws a histogram
ui <- navbarPage(
  "Name For Our App",
  intro_panel,
  first_int_panel,
  second_int_panel,
  third_int_panel,
  summary_panel,
  report_panel
)
