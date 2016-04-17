library(shiny)

# Define UI for application that draws a histogram
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Triathlon Time Estimator"),

  # Sidebar with a slider input for the number of bins

    sidebarPanel(
      h4("Swim Pace (min/100m)", align = "center"),
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

      h4("Bike Pace (mph)", align = "center"),
      column(12,
             column(12, 
                    numericInput(
                                 label="Mph:",
                                 min = 0,
                                 max = 80,
                                 step=0.1,
                                 value = 20,
                                 inputId = "bike_pace"))),
      
      h4("Run Pace (min/mile)", align = "center"),
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
      br(tags$hr()),
      h3("Transition Times:", align = "center"),
      
      h4("#1", align = "center"),
      column(12,
             column(6, 
                    numericInput("Minutes:",
                                 min = 0,
                                 max = 60,
                                 value = 1, 
                                 inputId = "T1_min")),
             column(6, numericInput("Seconds:",
                                    min = 0,
                                    max = 60,
                                    value = 0,
                                    inputId = "T1_sec"))),
      
      h4("#2", align = "center"),
      column(12,
             column(6, 
                    numericInput("Minutes:",
                                 min = 0,
                                 max = 60,
                                 value = 1, 
                                 inputId = "T2_min")),
             column(6, numericInput("Seconds:",
                                    min = 0,
                                    max = 60,
                                    value = 0,
                                    inputId = "T2_sec"))),
      # create extra gray space
      br(), br(), br()
      ),
  
  # Display total time and adjusting distances
  mainPanel(br(),h1(textOutput("total_time"), align = "center", style = "font-size: 100px; font-size: 14vw;"),
            helpText("(Hr : Min : Sec)", align = "center", style = "font-size: 100px; font-size: 3vw;"),
            br(),br(),br(),br(),br(),
            
            h3("Adjust Course Distances", align = "center"),
            helpText("If you know your exact course distances, enter them here:"),
            column(12,
                   column(4, 
                          numericInput("Swim Distance: (m)",
                                       min = 0,
                                       max = 10000,
                                       value = 1500,
                                       inputId = "swim_dist")),
                   column(4, 
                          numericInput("Bike Distance (mi)",
                                       min = 0,
                                       max = 200,
                                       value = 24.9,
                                       step=0.1,
                                       inputId = "bike_dist")),
                   column(4, numericInput("Run Distance (mi):",
                                          min = 0,
                                          max = 30,
                                          value = 6.2,
                                          step=0.1,
                                          inputId = "run_dist")))
            
            
            )
  ))
  
  