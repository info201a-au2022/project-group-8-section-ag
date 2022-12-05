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
    print("# A Data-Oriented Unpacking of Global Hunger and Undernourishment

<center>

![Picture Of A Globe On A Plate To Represent World Hunger](https://raw.githubusercontent.com/info201a-au2022/project-group-8-section-ag/main/docs/World-Hunger-Photo.jpg)

[*Image Source Link*](https://givingcompass.org/article/tracking-progress-on-ending-world-hunger)

</center>


## The Problem
It is no secret that world hunger is an issue; in fact, globally around 1 in 4 people are moderately to severely food insecure. This insecurity only seems to be rising over time, and with Earth recently hitting 8 billion people, it may seem inevitable that such a trend will continue. Understanding the severity and complexities of this problem may be a good first step in to learning where global hunger is the most persistant, and which countries need aid the most.

## Our Questions
We were curious about many things, but mostly we wanted to discover which countries were the most in need of aid. This information would make it easier for countries sending humanitarian aid to concentrate their efforts and address hunger at it's roots. 
To try to find these locations, the main questions we asked were:
- In which countries are children's development most impacted by hunger?
- Which countries have the most food insecure people
- On the global hunger index, which countries score the highest?
## Our Data
We used data from [Our World In Data](https://ourworldindata.org/hunger-and-undernourishment), and we found several datasets that show instances of extreme hunger globally. We used a dataset on stunting - which is loss of development due to malnutrition - in children under 5, and analyzed in which countries the highest percentage of children were impacted. 
## What We Found")
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
  print("The **Global Hunger Index (GHI)** Is a tool which was designed in order
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
