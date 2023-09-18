#Lesson 2: Create your own data frame

#Create a vector names
names <- c("Micio","Bunnie","Ginni","Richie")

#Create a vector age
age <- c(4,6,4,2)

#With these two vector create a new data frame pets
pets <- data.frame(names,age)

#preview data
str(pets)
glimpse(pets)
colnames(pets)

# create a new column
mutate(pets, age_in_5 = age +5)