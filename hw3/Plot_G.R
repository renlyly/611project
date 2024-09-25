# generate all plots

require(tidyverse)
library(tidyverse)
data <- readr::read_csv("processdata.csv")
disdata3 <- readr::read_csv("assumpt_dis_data.csv")


#### Q3 ####
ggplot(data, aes(birth_year)) + geom_histogram(stat="count") +
  labs(x="Birth year", y="Dog count", title="Dogs born on a given year")
ggsave("Q3a.png")

# set count 10 as the therehold 
minyear <-  data %>% 
  group_by(birth_year) %>%
  summarise(count = n(), .groups = 'drop') %>%
  filter(count > 20) %>%
  slice(1) %>%
  pull(birth_year)
ggplot(data, aes(birth_year)) + geom_histogram(stat="count") +
  labs(x="Birth year", y="Dog count",  
       title="Dogs born on a given year(non-trivial)") +
  xlim(minyear, NA)
ggsave("Q3b.png")

#### Q6 ####
# data1
data1 <- disdata3 %>%
  group_by(birth_year) %>%
  summarise(total_dogs = n(), .groups = 'drop')
# data2
data2 <- disdata3 %>%
  group_by(birth_year, name) %>%
  summarise(dogs_with_name = n(), .groups = 'drop')

joindata <- data2 %>%
  left_join(data1, by = "birth_year") %>%
  mutate(rate = dogs_with_name / total_dogs)

# most popular dog name:
name_1999 <- joindata %>%
  filter(birth_year == 1999) %>%
  arrange(desc(rate)) %>%
  slice(1) %>% 
  pull(name)

name_2023 <- joindata %>%
  filter(birth_year == 2023) %>%
  arrange(desc(rate)) %>%
  slice(1) %>% 
  pull(name)


joindata %>% 
  filter(name %in% c(name_1999, name_2023)) %>%
  ggplot(aes(x=birth_year, y=rate, color=name)) +
  geom_line() + 
  labs(x="Birth year", y="Rate")
ggsave("Q6.png")
