
#### Simulate ####


set.seed(853)

simulated_event_data <-
  tibble(
    event_year = rep(x = 2014:2022, each = 365), 
    event_type = rep(c("Type A", "Type B", "Type C"), each = 365 * length(2014:2022) / 3),
    Count = rpois(n = 365 * length(2014:2022), lambda = 30) 
  )

head(simulated_event_data)

