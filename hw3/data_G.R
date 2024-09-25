
#Generate all data set
require(tidyverse)
library(tidyverse)
data <- readr::read_csv("NYC_Dog_Licensing_Dataset_20240918.csv")

pr <- problems(data) %>% pull(row)
problematic_data  <- data %>% filter(row_number() %in% pr)
data <- data %>%
  rename(
    name = AnimalName,      
    gender = AnimalGender,  
    birth_year = AnimalBirthYear,  
    breed = BreedName,       
    zipcode = ZipCode,    
    issue_date = LicenseIssuedDate,  
    expiration_date = LicenseExpiredDate,  
    extract_year = 'Extract Year'  
  ) # Rename the columns

cc_data <- data %>% filter(complete.cases(.) )
# added a column complete data about information on duplicate line
dupdata  <- cc_data %>% group_by_all() %>%  filter(n()>1) %>% distinct()
name_d <- dupdata %>% group_by(name) %>%  summarise(n=n()) 
name_dd <- c(name_d$name)
cc_data <- cc_data %>%
  group_by_all %>%
  mutate(is_duplicate = n() > 1) %>%
  ungroup()

disdata2 <-cc_data %>% distinct(name, gender, birth_year, breed, zipcode)

disdata3 <- disdata2 %>%
  filter(!name %in% c("NONE","UNKNOWN", "NAME NOT PROVIDED", "NAME",".","...","A"))

readr::write_csv(data,"processdata.csv")
readr::write_csv(disdata3,"assumpt_dis_data.csv")










