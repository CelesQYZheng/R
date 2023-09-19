#Import data
hotel_bookings <- read.csv("hotel_bookings.csv")

head(hotel_bookings)
colnames(hotel_bookings)
glimpse(hotel_bookings)

#loading package
install.packages("tidyverse")
library(tidyverse)
install.packages("skimr")
library(skimr)
install.packages("janitor")
library(janitor)
install.packages("ggplot2")
library(ggplot2)


# distribution channel bar chart
ggplot(data = hotel_bookings)+
  geom_bar(mapping = aes(x= distribution_channel, fill=market_segment))


ggplot(data = hotel_bookings)+
  geom_bar(mapping = aes(x = distribution_channel))+
  facet_wrap(~deposit_type~market_segment)+
  theme(axis.text.x = element_text(angle = 45))

#filters and plot
ggplot(data = hotel_bookings)+
  geom_point(mapping = aes(x = lead_time, y = children))

onlineta_city_hotels <- filter(hotel_bookings, (hotel_bookings$hotel=="City Hotel" & 
                                  hotel_bookings$market_segment=="Online TA"))
#pipe version
onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")


ggplot(data = onlineta_city_hotels_v2)+
  geom_point(mapping = aes(x = lead_time, y= children))

head(onlineta_city_hotels_v2)