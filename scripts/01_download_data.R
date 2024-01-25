#### Preamble ####
# Purpose: Get data from2014-2023 and make table
# Author: Yetao Guo
# Email: yetao.guo@mail.utoronto.ca
# Date: 2024-1-22
# Prerequisites: -


install.packages("opendatatoronto")
install.packages("knitr")
install.packages("knitr")
library(knitr)
install.packages("janitor")
library(janitor)
install.packages("lubridate")
library(lubridate)
install.packages("opendatatoronto")
library(opendatatoronto)
install.packages("tidyverse")
library(tidyverse)

packages <- list_packages(limit = 10)
packages

a = search_packages("Crisis")
a
aa = list_package_resources("persons-in-crisis-calls-for-service-attended")
aa 
head(person_in_crisis)



#### Acquire ####
toronto_Crisis <-
  
  list_package_resources("persons-in-crisis-calls-for-service-attended") |>
  
  filter(name == 
           "Persons in Crisis - Calls for Service Attended.csv") |>
  
  get_resource()

write_csv(
  x = toronto_Crisis,
  file = "toronto_Crisis.csv"
)

head(toronto_Crisis)


