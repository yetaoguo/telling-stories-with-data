install.packages("tidyverse")
library(tidyverse)
install.packages("dplyr")
library(dplyr)
install.packages("kableExtra")
library(kableExtra)

# Creating an advanced table of count of Event Types by Year
advanced_table <- toronto_Crisis_clean %>%
  group_by(event_year, event_type) %>%
  summarize(Count = n())


# Print the advanced table
print(advanced_table)
###organized table
advanced_table <- advanced_table %>%
  select(event_year,event_type,Count)
advanced_table %>%
  slice(1:30) %>%
  kable(
    col.names=c("event_year", "event_type", "Count"),
    linesep = "", digits = 1, booktabs=TRUE) %>%
  kable_styling(latex_options = "HOLD_position", font_size = 10)

