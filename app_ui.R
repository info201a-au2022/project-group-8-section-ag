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
# Note: All summary graphs are interactive as well, but not to the same extent as interactive pages
## (only to the extent of normal plotly graphs!)

summary_main_content <- mainPanel(
  h3("Child Stunting"),
  print("Our first takeaway is that child stunting is a pressing issue in many countries; 
        so pressing in fact that there were at least 7 countries where over 50% of children were physically
        impacted by malnutrition. Understanding and addressing where child stunting
        is the worst is a necessary step in making sure children are given the necessary access to nutrition."),
  p(" "),
#  plotlyOutput("graph_1"),
img(src = "https://github.com/info201a-au2022/project-group-8-section-ag/blob/fe1b839ee697920f844ab7bb266442484c4faba3/docs/Graph_1_Screenshot.png"),
  h3("Food Insecurity"),
  print("Our second takeaway is that, globally, food insecurity worldwide looks to be increasing. This is 
        concerning, as populations are also continuing to rise. This means more mouths to feed and a need
        to address access to food quickly. Looking where food insecurity is the worst and understanding where
        it has been persistent the longest is important to making sure humanitarian efforts provide food where
        it is most needed."),
  p(" "),
#  plotlyOutput("graph_2"),
  h3("Global Hunger Index"),
  print("As previously mentioned, is is clear that food insecurity - one of the main contributors to hunger - has been
        on the rise since 2015. However, our final takeaway is that hunger is only worsening in certain places, not everywhere.
        This is critical to thinking about how we fight hunger; some countries who have been very high on the global hunger 
        index are reducing hunger, while others are struggling even more. In nations such as Yemen and Madagascar, 
        hunger appears to be spiking. On the other hand, the other nations appear to be experiencing plateaus and decreases.
        The main implication of this is that the changes in hunger worldwide are not all following a single trend, 
        and that different approaches are called for in countries where trends in hunger, as well as its causes, are different."),
  p(" "),
#  plotlyOutput("graph_3")
)

summary_panel <- tabPanel(
  "Summary",
  titlePanel("Our Takeaways From The Data"),
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
