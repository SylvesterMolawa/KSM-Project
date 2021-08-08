## ui.R ##
library(shinydashboard)
source("utils/loadpackages.R")

dashboardPage( skin = "blue",
  dashboardHeader(title = "KSM Project",
                  titleWidth = 250
                  ), # end of header
  dashboardSidebar(
    sidebarMenu(
      menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
      menuItem("Widgets", tabName = "widgets", icon = icon("graduation-cap")))
      
  ), # end of side bar
  dashboardBody(
  tabItems(
    tabItem(tabName = "dashboard",
            fluidRow(
              plotlyOutput("fig1")
            ),
            fluidRow(
              plotlyOutput("fig3")
            )
            ), # end of dashboard tap
    
    tabItem(tabName = "widgets",
            fluidRow(
            plotlyOutput("fig2"))
    
  )) #end of tab items
    
  ) # end of body
) # end of page
