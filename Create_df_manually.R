
id <- c(1:6)
name <-c("Alice Mendes","Bob Stewart","Cathy Harper","Dylon Ansderson","Erika Swift","Francies Hickman")
job_title <-c("Professional","Programmer","Management","Clerical","Developer","Doctor")
employee <- data.frame(id, name, job_title)

# separate first and last name
separate(employee, name, into = c("firt_name","last_name"),sep = ' ')

first_name<-c("Alice","Bob","Cathy","Dylon","Erika","Francies")
last_name<-c("Mendes","Stewart","Harper","Ansderson","Swift","Hickman")
job_title <-c("Professional","Programmer","Management","Clerical","Developer","Doctor")

employee <- data.frame(id,first_name, last_name,job_title)
#combine names
unite(employee,"name",first_name,last_name,sep = " ")