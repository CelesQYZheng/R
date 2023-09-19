install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")

library(tidyverse)
library(skimr)
library(janitor)

# import data
bookings_df <- read_csv("hotel_bookings.csv")

glimpse(bookings_df)

#how many columns are in this dataset?
colnames(bookings_df) # 32 colmns in total



#What is the highest and minimum leading time?
leading_time <- bookings_df %>% 
  summarise(higest_leading_time = max(lead_time), average_leading_time = mean(lead_time),minmum_leading_time = min(lead_time))
# The highest leading time is 737 , the minimun is 0


hotel_sum <- bookings_df %>% 
  group_by(hotel) %>% 
  summarise(average_lead_time = mean(lead_time),min_lead_time = min(lead_time),max_leas_time = max(lead_time))

hotel_sum

########################GGPLOT2
install.packages("ggplot2")
library(ggplot2)

ggplot(data = bookings_df)+
  geom_point(mapping=aes(x=stays_in_weekend_nights,y=children))

