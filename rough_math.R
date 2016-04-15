
swim_pace = 117 # sec /100m     1.57 min/100m
bike_pace = 20.31 # mi / hr
run_pace = 7.31 # min / mi



######### Start with Lubridate

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

# Transition 2
T2 <- period(minute=1, second=5)

run_pace <- period(minute=7, second=31) # min / mile


