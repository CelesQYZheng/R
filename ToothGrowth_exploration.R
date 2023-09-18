data("ToothGrowth")
View(ToothGrowth)

#Filtering dataset
filtered_tg <- filter(ToothGrowth, dose == 0.5)
View(filtered_tg)

arrange(filtered_tg,len)

# Nested function
arrange(filter(ToothGrowth,dose == 0.5), len)

# pipe
filtered_toothgrowth <- ToothGrowth%>% 
  filter(dose ==0.5)%>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len,na.rm = T),.group ="drop")
  
