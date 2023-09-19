#package palmerpenguins

#use select function
penguins %>% 
  #select every thing except species
  select(-species)

#rename colmn name
penguins %>% 
  rename(island_new = island)

#rename colmns with uppercase
rename_with(penguins,toupper)

rename_with(penguins,tolower)

clean_names(penguins)

#add new columns
View(penguins)
penguins %>% 
  mutate(body_mass_kg = body_mass_g / 1000, filpper_length_m = flipper_length_mm/1000)
