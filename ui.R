library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Triathlon Time Estimator"),

  # Sidebar with a slider input for the number of bins

    fluidRow(
      h3("Swim Pace"),
      column(8,
             column(2, 
                    numericInput("num",
                          "Minutes:",
                          min = 0,
                          max = 60,
                          value = 1)),
             column(2, numericInput("num",
                                    "Seconds:",
                                    min = 0,
                                    max = 60,
                                    value = 30))))))
  
  