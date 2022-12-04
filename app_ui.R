library(shiny)

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
        graph is useful for showing trends of malnutrition in children over time.")
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

#  label = "Select A Year",
#  min = 2015,
#  max = 2019,
#  value = 2017
)

second_int_sidebar_content <- sidebarPanel(
  graph2_input,
  print("Explanation of graph")
)

second_int_main_content <- mainPanel(
  plotlyOutput("plot2")
)

second_int_panel <- tabPanel(
  "Second Interactive Panel",
  titlePanel("Second Interactive Panel"),
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
  "Name For Our App",
  intro_panel,
  first_int_panel,
  second_int_panel,
  third_int_panel,
  summary_panel,
  report_panel
)
