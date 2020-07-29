library(shiny)
library(tidyverse)

##import all databases
Van17 <- read.csv("vanclimate_data_2017.csv")
Van18 <- read.csv("vanclimate_data_2018.csv")
Van19 <- read.csv("vanclimate_data_2019.csv")

Van17 <- Van17 %>% 
  rename(MaxTemp = "Max.Temp..Â.C.", MinTemp = "Min.Temp..Â.C.", MeanTemp = "Mean.Temp..Â.C.", TotalPrecipitation = "Total.Precip..mm.") %>%
  select(Year:Day, MaxTemp, MinTemp, MeanTemp, TotalPrecipitation)

Van18 <- Van18 %>% 
  rename(MaxTemp = "Max.Temp..Â.C.", MinTemp = "Min.Temp..Â.C.", MeanTemp = "Mean.Temp..Â.C.", TotalPrecipitation = "Total.Precip..mm.") %>%
  select(Year:Day, MaxTemp, MinTemp, MeanTemp, TotalPrecipitation)

Van19 <- Van19 %>% 
  rename(MaxTemp = "Max.Temp..Â.C.", MinTemp = "Min.Temp..Â.C.", MeanTemp = "Mean.Temp..Â.C.", TotalPrecipitation = "Total.Precip..mm.") %>%
  select(Year:Day, MaxTemp, MinTemp, MeanTemp, TotalPrecipitation)

mymonths <- c("Jan", "Feb", "Mar",
              "Apr", "May", "Jun",
              "Jul", "Aug", "Sep",
              "Oct", "Nov", "Dec")

Van17$MonthAbb <- mymonths[Van17$Month]
Van18$MonthAbb <- mymonths[Van18$Month]
Van19$MonthAbb <- mymonths[Van19$Month]

