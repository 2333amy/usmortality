# average ranum in different age band from 1979-2020# 
###############################################################################

mortality_1999_2020<- readRDS("mortality_1999_2020")
mortality_1979_1998<- readRDS("mortality_1979_1998")

# simple version of demographic information
mortality_demographic_1979<- mortality_1979_1998%>%
  select(year, ager12, sex, ranum, race) 
mortality_demographic_1999<- mortality_1999_2020%>%
  select(year, ager12, sex, ranum, race) 

#1979-1998
age_ranum_1979 <- mortality_demographic_1979%>%select(year, ager12, ranum) %>%
  filter(ager12 != "Age not stated"  ) %>%
  mutate(Age =  case_when(
    ager12 == "75-84 years" ~ "75-84 years", 
    ager12 =="65-74 years" ~ "65-74 years",
    ager12 =="85 years and over" ~ "85 years and over",
    ager12 =="55-64 years"~ "Less than 65 years", 
    ager12 =="35-44 years"~ "Less than 65 years", 
    ager12 =="under 1 year"~ "Less than 65 years", 
    ager12 =="15-24 years"~ "Less than 65 years", 
    ager12 =="25-34 years"~ "Less than 65 years",
    ager12 == "45-54 years"~ "Less than 65 years", 
    ager12 =="1-4 years"~ "Less than 65 years", 
    ager12 =="5-14 years"~ "Less than 65 years"
  ))%>%
  select(-ager12)%>%
  group_by(year, Age, ranum)%>%
  summarise(count=n())

age_ranum_1979 <- age_ranum_1979 %>%
  mutate(`All ranum` =  ranum*count) %>%
  group_by(year, Age) %>%
  mutate(Mortality = sum(count))%>%
  mutate(`Total ranum` =  sum(`All ranum`))


# Average number of causes according to their age band   
age_ranum_1979_1998 <- age_ranum_1979 %>%select(year,Age, Mortality, `Total ranum`)%>% 
  distinct()%>%
  mutate(`Average causes` = round(`Total ranum`/Mortality, 3) )

#1999-2020
age_ranum <- mortality_demographic_1999%>%select(year, ager12, ranum) %>%
  filter(ager12 != "Age not stated"  ) %>%
  mutate(Age =  case_when(
    ager12 == "75-84 years" ~ "75-84 years", 
    ager12 =="65-74 years" ~ "65-74 years",
    ager12 =="85 years and over" ~ "85 years and over",
    ager12 =="55-64 years"~ "Less than 65 years", 
    ager12 =="35-44 years"~ "Less than 65 years", 
    ager12 =="under 1 year"~ "Less than 65 years", 
    ager12 =="15-24 years"~ "Less than 65 years", 
    ager12 =="25-34 years"~ "Less than 65 years",
    ager12 == "45-54 years"~ "Less than 65 years", 
    ager12 =="1-4 years"~ "Less than 65 years", 
    ager12 =="5-14 years"~ "Less than 65 years"
  ))%>%
  select(-ager12)%>%
  group_by(year, Age, ranum)%>%
  summarise(count=n())

age_ranum_1999 <- age_ranum %>%
  mutate(`All ranum` =  ranum*count) %>%
  group_by(year, Age) %>%
  mutate(Mortality = sum(count))%>%
  mutate(`Total ranum` =  sum(`All ranum`))

# Average number of causes according to their age band   
age_ranum_1999_2020 <- age_ranum_1999 %>%select(year,Age, Mortality, `Total ranum`)%>% 
  distinct()%>%
  mutate(`Average causes` = round(`Total ranum`/Mortality, 3) )

#combine both
age_ranum_1979_1998$year<- as.integer(age_ranum_1979_1998$year)
age_ranum_1979_2020<- bind_rows(age_ranum_1979_1998,age_ranum_1999_2020  )
save(age_ranum_1979_2020, file = "age_ranum_1979_2020.Rda")
age_ranum_1979_2020_table <- age_ranum_1979_2020%>% select(year, Age, `Average causes`)%>%rename(Year = year)%>%
  pivot_wider(
    names_from = Age, 
    values_from = `Average causes`)
save(age_ranum_1979_2020_table, file = "age_ranum_1979_2020_table.Rda")

#add level
age_ranum_1979_2020$Age <- factor(age_ranum_1979_2020$Age, c("Less than 65 years", "65-74 years", 
                                                             "75-84 years", "85 years and over"))

age_ranum_1979_2020$year<- as.character(age_ranum_1979_2020$year)
ggplot(age_ranum_1979_2020 %>% 
         select(year, Age, `Average causes`) %>% 
         rename(Year = year) %>%
         filter_at(vars(Year), 
                   any_vars(. %in% c("1979", "1984", "1989", "1994", "1999", "2004", "2009", "2014", "2019")))
       , aes(x=Age, y=`Average causes`, group=Year, color=Year)) +
  geom_line() +
  scale_color_manual(values = c("#1B9E77", "#D95F02" ,"#7570B3", "#E7298A" ,"#66A61E" ,"#E6AB02" ,
                                "#A6761D" ,"#666666","#386CB0")) +
  theme_classic() +
  theme(text=element_text(size=7, family = "Times New Roman" )) +
  ylab("Average number of causes recorded in Death Certificate") +
  xlab("Age Group")+
  theme(legend.position = "top")


###############################################################################