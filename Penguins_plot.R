install.packages("ggplots")
install.packages("palmerpenguins")
library(ggplot2)
library(palmerpenguins)

data(penguins)
View(penguins)

#ggplot() create a coordinate system that you are add layers to
#first argument is the dataset used in the plot
ggplot(data = penguins) 
+ geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))
#geom_point() uses point to create scatterplots.
# mapping = aes(x = ...,y = ...) this defines how variables in the dataset are mapped to visual property
# aes() function specify which variables to map to the x-axis an the y-axis of the coordinate systems.


