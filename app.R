library(shiny)
library(ggplot2)
library(plotly)
library(dplyr)

source("app_server.R")
source("app_ui.R")

#Summary takeaway graphs
source('./source/Graph_1.R')
source('./source/Graph_2.R')
source('./source/Graph_3.R')


shinyApp(ui = ui, server = server)
