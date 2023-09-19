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