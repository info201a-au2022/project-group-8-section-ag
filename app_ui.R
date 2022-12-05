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
  titlePanel("A Data-Oriented Unpacking of Global Hunger and Undernourishment"),
  mainPanel(
    includeMarkdown('./docs/Introduction_Markdown.md')
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
graph3_input <- selectInput(
  inputId = "var_p3",
  label = "Select A Country",
  choices = c(unique(hunger_index["Entity"])),
  selected = "Afghanistan"
)

third_int_sidebar_content <- sidebarPanel(
  graph3_input,
  print("The Global Hunger Index (GHI) is a tool which was designed in order
         to track and evaluate hunger globally, as well as by region and by
         country. They GHI is calculated annualy, and its results appear in a
         report issued each year. Global progress in ending hunger is at a near 
         standstill. This is reflected in this graph. Below the surface, the GHI 
         does not only represent hunger, it also summarizes the impact of risk factors,
         such as poverty, inequality, war, climate change, and consequences of the
         pandemic.")
)

third_int_main_content <- mainPanel(
  plotlyOutput("plot3")
)

third_int_panel <- tabPanel(
  "Global Hunger Index",
  titlePanel("The Global Hunger Index"),
  sidebarLayout(
  third_int_sidebar_content,
  third_int_main_content
  )
)

# This is where the code starts for the summary panel

summary_main_content <- mainPanel(
  print("Our first takeaway is that child stunting is a pressing issue in many countries; 
  so pressing in fact that there were at least 7 countries where over 50% of children were physically 
  impacted by malnutrition.  We included this chart to show the places where food insecurity was
  affecting children the most. The data reveals that these seven countries - Bangladesh, 
  Burundi, Eritrea, Guatemala, Madagascar, Timor, and Yemen - had on average 50% of their children’s 
  development stunted from malnutrition from 2015 to 2019. Understanding and addressing where child stunting
  is the worse is a necessary step in making sure children are given the necessary access to nutrition."),
  plotlyOutput("graph_1"),
  plotlyOutput("graph_2"),
  plotlyOutput("graph_3")
)

summary_panel <- tabPanel(
  "Summary",
  titlePanel("What We Found"),
  summary_main_content
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
