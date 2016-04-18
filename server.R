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
  
  output$swim_time <- renderPrint({
    swim_time <- in_sec(period(minute=input$swim_min,second=input$swim_sec))*(input$swim_dist)/100
    swim_time <- seconds_to_period(swim_time)
    hours <- swim_time$hour
    minutes <- swim_time$minute
    seconds <- round(swim_time$.Data)
    cat(hours, ":", minutes, ":", seconds)
  })
  output$bike_time <- renderPrint({
    bike_time <- 1/(input$bike_pace/input$bike_dist/60/60)
    bike_time <- seconds_to_period(bike_time)
    hours <- bike_time$hour
    minutes <- bike_time$minute
    seconds <- round(bike_time$.Data)
    cat(hours, ":", minutes, ":", seconds)
  })
  
  output$run_time <- renderPrint({
    run_time <- in_sec(period(minute=input$run_min,second=input$run_sec))*input$run_dist
    run_time <- seconds_to_period(run_time)
    hours <- run_time$hour
    minutes <- run_time$minute
    seconds <- round(run_time$.Data)
    cat(hours, ":", minutes, ":", seconds)
  })
  
})
  