#1. Table of mortality age distribution ratio from 1979-2020# 
###############################################################################
mortality_1999_2020<- readRDS("mortality_1999_2020")
mortality_1979_1998<- readRDS("mortality_1979_1998")

# simple version of demographic information
mortality_demographic_1999<- mortality_1999_2020%>%
  select(year, ager12, sex, ranum, race) 

mortality_1979_1998$year <- as.character(mortality_1979_1998$year)
mortality_demographic_1979<- mortality_1979_1998%>%
  mutate(Year = case_when(
    !is.na(datayear) ~ datayear,
    !is.na(year) ~ year)) %>%
  select(-year, -datayear)%>%
  rename(year= Year)%>%
  select(year, ager12, sex, ranum, race) 

#Total decedents Estimate United States 1979_2020
mortality_decedent_age_distribution_count_percentage_1999 <- mortality_demographic %>%
  select(-ranum, -race)%>%
  group_by(year, ager12, sex)%>%
  summarise(count=n()) %>%
  group_by(year)%>%
  mutate(`mortality population` = sum(count))%>%
  mutate(percentage  = round(count/`mortality population`*100, 2))%>%
  group_by(year, ager12)%>%
  mutate(`unisex percentage` = sum(percentage))
mortality_decedent_age_distribution_count_percentage_1999$year<- as.character(mortality_decedent_age_distribution_count_percentage_1999$year)

mortality_decedent_age_distribution_count_percentage_1979 <- mortality_demographic_1979 %>%
  select(-ranum, -race)%>%
  group_by(year, ager12, sex)%>%
  summarise(count=n()) %>%
  group_by(year)%>%
  mutate(`mortality population` = sum(count))%>%
  mutate(percentage  = round(count/`mortality population`*100, 2))%>%
  group_by(year, ager12)%>%
  mutate(`unisex percentage` = sum(percentage))

mortality_decedent_age_distribution_count_percentage_1979_2020 <- bind_rows(mortality_decedent_age_distribution_count_percentage_1979, mortality_decedent_age_distribution_count_percentage_1999)
saveRDS(mortality_decedent_age_distribution_count_percentage_1979_2020, file = "mortality_decedent_age_distribution_count_percentage_1979_2020.Rda")

unisex_mortality_percentage<- distinct(mortality_decedent_age_distribution_count_percentage_1979_2020[,c(1,2, 7) ]) %>%
  pivot_wider(
    names_from = ager12, 
    values_from = `unisex percentage`
  ) %>%
  select(-`Age not stated`)
unisex_mortality_percentage<-add_column(unisex_mortality_percentage, sex ="Unisex" ,.after = "year")

gender_based_mortality_percentage<-distinct(mortality_decedent_age_distribution_count_percentage_1979_2020[,c(1,2, 3,6) ]) %>%
  pivot_wider(
    names_from = ager12, 
    values_from = percentage
  )%>%
  select(-`Age not stated`)

all_gender_based_mortality_percentage<- bind_rows(gender_based_mortality_percentage,unisex_mortality_percentage)%>%
  group_by(sex) %>%
  relocate(`under 1 year`, .before=`1-4 years`) %>%
  rename(`Under 1 year` = `under 1 year`)%>%
  rename(Year = year)%>%
  rename(Sex=sex)

all_gender_based_mortality_percentage%>%group_by(Year, Sex)
library(kableExtra)

all_gender_based_mortality_percentage%>%filter_at(vars(Year), 
                                                  any_vars(. %in% c("1979" ,"1984" ,"1989","1994", "1999", "2004" ,"2009", "2014" ,"2019")))%>%
kbl()%>%
  kable_classic_2(full_width = F, html_font = "Times")


ggplot(all_gender_based_mortality_percentage%>%filter(Year=="1979" | Year == "2019")%>%filter(Sex=="Unisex"))+
  geom_bar(aes())


#Display in presentation (10 year interval)
unisex_age_distribution <-all_gender_based_mortality_percentage%>%
  filter_at(vars(Year), 
           any_vars(. %in% c("1979" ,"1989","1999", "2009", "2019")))%>%
  filter(Sex=="Unisex")

unisex_age_distribution<- unisex_age_distribution[, -2]%>%gather(key="Age", value="Percentage", 2:12)
unisex_age_distribution$Age<- factor(unisex_age_distribution$Age, levels=c("Under 1 year", "1-4 years", "5-14 years",
                               "15-24 years","25-34 years", "35-44 years", 
                               "45-54 years",  "55-64 years","65-74 years", "75-84 years", 
                               "85 years and over"))
ggplot(unisex_age_distribution, aes(x=Age, y=Percentage, group=Year, color = Year))+
  geom_line()+
  scale_colour_manual(values =c("#1B9E77", "#D95F02" ,"#7570B3", "#E7298A" ,"#66A61E" ,"#E6AB02" ,
                                "#A6761D" ,"#666666", "#7FC97F", "#BEAED4" ,"#FDC086", "#FFFF99",
                                "#386CB0" ,"#F0027F", "#BF5B17"))+
  theme_classic()+
  theme(text=element_text(size=12, family = "Times New Roman" ))+
  ylab("")+
  xlab("")+
  theme(axis.text.x = element_text(angle = 45))


