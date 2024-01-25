
toronto_Crisis_clean <-
  clean_names(toronto_Crisis) |>
  select(event_year,event_month,event_type,event_hour)

head(toronto_Crisis_clean)

write_csv(
  x = toronto_Crisis_clean,
  file = "cleaned_toronto_Crisis.csv"
)

