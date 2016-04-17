library(shiny)

# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Triathlon Time Estimator"),

  # Sidebar with a slider input for the number of bins

    sidebarPanel(
      h4("Swim Pace (min/100m)"),
      column(12,
             column(6, 
                    numericInput("Minutes:",
                          min = 0,
                          max = 60,
                          value = 1, 
                          inputId = "swim_min")),
             column(6, numericInput("Seconds:",
                                    min = 0,
                                    max = 60,
                                    value = 30,
                                    inputId = "swim_sec"))),
      h4("Bike Pace (mph)"),
      column(12,
             column(12, 
                    numericInput(
                                 label="Mph:",
                                 min = 0,
                                 max = 80,
                                 step=0.1,
                                 value = 20,
                                 inputId = "bike_pace"))),
      h4("Run Pace (min/mile)"),
      column(12,
             column(6, 
                    numericInput("Minutes:",
                                 min = 0,
                                 max = 80,
                                 value = 6,
                                 inputId = "run_min")),
             column(6, numericInput("Seconds:",
                                    min = 0,
                                    max = 60,
                                    value = 30,
                                    inputId = "run_sec"))),
      br(), br(), br()
      ),
  mainPanel(h1("TIME: 2h 30s"))
  ))
  
  