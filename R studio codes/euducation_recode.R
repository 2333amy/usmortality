##################EDUCATION ##################

education_1979 <- mortality_1979_1998%>%
  select(year, educr)%>%
  group_by(year, educr) %>%
  summarise(Count = n()) %>%
  group_by(year)%>%
  rename(`Education Level` =  educr)%>%
  mutate(Mortality = sum(Count)) %>%
  mutate(Percentage = round( Count/Mortality*100, 2))

education_1999 <- mortality_1999_2020%>%
  select(year, educr)%>%
  group_by(year, educr) %>%
  summarise(Count = n()) %>%
  group_by(year)%>%
  rename(`Education Level` =  educr)%>%
  mutate(Mortality = sum(Count)) %>%
  mutate(Percentage = round( Count/Mortality*100, 2))

education_1979_2020<- bind_rows(education_1979,education_1999)%>%
  rename(Year = year)

education_1979_2020 <- education_1979_2020 %>%
  mutate(`Education Level` = case_when(
    `Education Level` %in% c("16 years and more", "15 years and more") ~ "15 years and more",
    TRUE ~ `Education Level`
  )) %>%
  mutate(`Education Level` = case_when(
    `Education Level` %in% c("Not Stated", "Not stated") ~ "Not stated",
    TRUE ~ `Education Level`
  ))  

saveRDS(education_1979_2020, "education_1979_2020")

ggplot(data = education_1979_2020%>%filter(Year > 1988), aes(x= Year,y = Percentage, fill = `Education Level`))+
  geom_bar(stat = "identity")+
  scale_fill_manual(values = brewer.pal(8, "Dark2")) +
  theme_tufte()+
  theme(text=element_text(size=12, family = "Times New Roman" ))



education_1979_age <- mortality_1979_1998%>%
  select(year,ager12,  educr, )%>%
  group_by(year,  ager12, educr) %>%
  summarise(Count = n()) %>%
  group_by(year, ager12)%>%
  rename(`Education Level` =  educr)%>%
  mutate(Mortality = sum(Count)) %>%
  mutate(Percentage = round( Count/Mortality*100, 2))