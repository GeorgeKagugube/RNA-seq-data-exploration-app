rm(list = ls())

## Set working directory
setwd('/Users/gwk/Desktop/Bioinformatics/RNA-seq-data-exploration-app')

## Check the contents of the working directory here 
dir()

## Set up the app here as a onefile app
## Load the required libraries here
library(shiny)
library(shinydashboard)
library(DT)
library(clusterProfiler)
library(org.Dr.eg.db)
library(ggplot2)
library(enrichplot)
library(dplyr)

## The shinny app starts from here
## Split the app here with the different sections labelled accordingly
## App header items
header <- dashboardHeader(
  title = "GWK Data Explore"
)

# App sidebar content
sidebar <- dashboardSidebar(
    sidebarMenu(
        menuItem("Upload Files", tabName = "Upload"),
        menuItem("Pvalue", tabName = "pval")
    )
)


## App body content
body <- dashboardBody(
  tabItems(
    # Item 1
    tabItem(tabName = 'Uploads')
  )
)

ui <- dashboardPage(
  header, sidebar, body
  )

server <- function(input, output) { }

shinyApp(ui, server)