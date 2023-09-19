# packages include tidyverse,skimr,janitor
# import data
bookings_df <- read_csv("hotel_bookings.csv")

# getting to know the data
head(bookings_df)
str(bookings_df)
glimpse(bookings_df)
colnames(bookings_df)
skim_without_charts(bookings_df)

#clean the data
trimmed_df <- bookings_df %>% 
  select(hotel,is_canceled,lead_time) %>% 
  rename(hotel_type = hotel)

#combine arrival month and year into one column
arrival_time <- bookings_df %>% 
  select(arrival_date_year,arrival_date_month) %>% 
  unite(arrival_month_year,c("arrival_date_month","arrival_date_year"), sep = " ")

#sum total guests
num_guests <- bookings_df %>% 
  mutate(guests = adults+children+babies)

#total canceled bookings
sum_canceled <-bookings_df %>% 
  summarize(num_canceled = sum(is_canceled),avg_lead_time = mean(lead_time))
