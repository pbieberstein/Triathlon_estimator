in_sec <- function(period_time) {
  period_to_seconds(period_time)
}

# Swim time
#swim_pace = seconds_to_period(117) # sec /100m     1.57 min/100m
swim_pace <- period(minute=1,second=57) # sec /100m     1.57 min/100m
swim_time <-period_to_seconds(swim_pace)*15
swim_time <- seconds_to_period(swim_time)
swim_time

# Transition 1
T1 <- period(minute=1, second=24)

# Bike time
bike_pace <- 20.31 # mi / hr
bike_time <- 1/(bike_pace/24.9/60/60)
bike_time <- seconds_to_period(bike_time)
bike_time

# Transition 2
T2 <- period(minute=1, second=5)

run_pace <- period(minute=7, second=30) # min / mile
run_time <-period_to_seconds(run_pace)*6.2
run_time <- seconds_to_period(run_time)
run_time


# Calculate total time in seconds
total_time <- in_sec(swim_time)+in_sec(T1)+
  in_sec(bike_time)+ in_sec(T2)+
  in_sec(run_time)
  
# Transoform into readable format
seconds_to_period(total_time)
