#create a vector fruits
fruits <- c("Kiwi fruit","Lychee","Pineapple","Strawberry","Coconut")

#give a rank to fruit 1->like the most
ranks<-c(3,2,4,5,1)

# create a fruit rank data frame
fruit_rank <-data.frame(fruits,ranks)

head(fruit_rank)
glimpse(fruit_rank)

mutate(fruit_rank,price_kg = c(5.00,10.00,4.00,3.00,8.00))
