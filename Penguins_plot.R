install.packages("ggplots")
install.packages("palmerpenguins")
library(ggplot2)
library(palmerpenguins)

data(penguins)
View(penguins)

#ggplot() create a coordinate system that you are add layers to
#first argument is the dataset used in the plot
ggplot(data = penguins)+ 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))
#geom_point() uses point to create scatterplots.
# mapping = aes(x = ...,y = ...) this defines how variables in the dataset are mapped to visual property
# aes() function specify which variables to map to the x-axis an the y-axis of the coordinate systems.


#mapping to new aesthetics
ggplot(data = penguins)+ 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species,shape = species))
#,alpha = species,size = species

#general trends
ggplot(data = penguins)+ 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#combination
ggplot(data = penguins)+
  geom_smooth(mapping = aes(x=flipper_length_mm, y = body_mass_g))+
#general trends
ggplot(data = penguins)+ 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))
eom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#different line for each species
ggplot(data = penguins)+ 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g,linetype = species))

ggplot(data = penguins)+ 
  geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g,linetype = species))

#facet
ggplot(data = penguins)+ 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,color=species))+
  facet_wrap(~species)


ggplot(data = penguins,aes(x = flipper_length_mm, y = body_mass_g))+
  geom_point(aes(color = species))+
  facet_wrap(~species)

ggplot(data = penguins)+
  geom_point(mapping = aes(x = flipper_length_mm, y= body_mass_g,color = species))+
  facet_grid(sex~species)

ggplot(data = penguins)+
  geom_point(mapping = aes(x = flipper_length_mm, y= body_mass_g,color = species))+
  facet_grid(~species)


ggplot(data = penguins)+
  geom_point(mapping = aes(x = flipper_length_mm, y= body_mass_g,color = species))+
  facet_grid(~sex)
