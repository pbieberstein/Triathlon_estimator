library(shiny)
library(lubridate)

in_sec <- function(period_time) {
  period_to_seconds(period_time)
}

# Define server logic
shinyServer(function(input, output) {
  
  output$total_time <- renderPrint({
    swim_time <- in_sec(period(minute=input$swim_min,second=input$swim_sec))*(input$swim_dist)/100
    
    T1_time <- in_sec(period(minute=input$T1_min,second=input$T1_sec))
    
    bike_time <- 1/(input$bike_pace/input$bike_dist/60/60)
    
    T2_time <- in_sec(period(minute=input$T2_min,second=input$T2_sec))
    
    run_time <- in_sec(period(minute=input$run_min,second=input$run_sec))*input$run_dist
    
    total_time <- swim_time + T1_time + bike_time + T2_time + run_time
    total_time <- seconds_to_period(total_time)
    hours <- total_time$hour
    minutes <- total_time$minute
    seconds <- round(total_time$.Data)
    
    cat(hours, ":", minutes, ":", seconds)
  })
})
  