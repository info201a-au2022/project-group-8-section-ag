library(shiny)
library(ggplot2)
library(plotly)
library(dplyr)

#You will need an intro page that shows up first
#Followed by 3 interactive pages based off your graph
#A summary takeaway page
# A report page


# This is the code for the intro panel
intro_panel <- tabPanel(
  "Introduction",
  titlePanel("Introduction"),
  mainPanel(
    print("Enter Intro Text Here")
  )
)

# This is where the code starts for the first interactive panel
graph1_input <- selectInput(
  inputId = "var_p1",
  label = "Select A Country",
  choices = c(unique(child_stunting["Entity"])),
  selected = "Afghanistan"
)

first_int_sidebar_content <- sidebarPanel(
  graph1_input,
  print("Child stunting is one of the leading measures use to assess childhood malnutrition.
        What does this mean? Children are considered to be stunted when they are unable to grow
        to their expected height and developement due to diease, poor health, and hunger. This 
        graph is useful for showing trends of malnutrition in children over time, and seeing which
        countries have worsening trends.")
)

first_int_main_content <- mainPanel(
  plotlyOutput("plot1")
)

first_int_panel <- tabPanel(
  "Child Stunting",
  titlePanel("Percent Of Children Stunted In Each Country"),
  sidebarLayout(
    first_int_sidebar_content,
    first_int_main_content
  )
)

# This is where the code starts for the second interactive panel
graph2_input <- selectInput(
  inputId = "var_p2",
  label = "Select A Country",
  choices = c(unique(ppl_food_insecure["Entity"])),
  selected = "Afghanistan"
)

second_int_sidebar_content <- sidebarPanel(
  graph2_input,
  print("Food insecurity is when people do not have stable access to affordable food and
        nutrition. Millions of people are food insecure across the world, which can cause a
        variety of damaging health affects or even starvation. This graph is useful in knowing
        which countries have the most food insecure people, and whether this is an environment
        that was created recently or ongoing.")
)

second_int_main_content <- mainPanel(
  plotlyOutput("plot2")
)

second_int_panel <- tabPanel(
  "Food Insecurity",
  titlePanel("Millions of People Who Are Food Insecure"),
  sidebarLayout(
    second_int_sidebar_content,
    second_int_main_content
  )
)


# This is where the code starts for the third interactive panel
third_int_panel <- tabPanel(
  "Third Interactive Panel",
  titlePanel("Third Interactive Panel")
)

# This is where the code starts for the summary panel
summary_panel <- tabPanel(
  "Summary Takeaways Panel",
  titlePanel("Summary Takeaways Panel")
)

# This is where the code starts for the report panel
report_panel <- tabPanel(
  "Report Panel",
  titlePanel("Report Panel"),
)

# This is where the ui is defined
ui <- navbarPage(
  "Global Hunger And Malnourishment",
  intro_panel,
  first_int_panel,
  second_int_panel,
  third_int_panel,
  summary_panel,
  report_panel
)
