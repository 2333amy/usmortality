# Finish combining the dataset between 1979 to 2020 

colnames(mort1999_2019)
mort1999_2019<- readRDS("mort1999_2019")


mort1999_2020 <- bind_rows(mort1999_2019, mort_2020)

colnames(mort_2020)
# mort_2020 has different variables regarding education level.
# Therefore, we managed the variables into same variable name, 
# as `educ2003` and `educ1989` 
combine_edu <- mort1999_2020 %>%
  select(educ89,educ,  educ1989, educ2003) %>%
  mutate( education_2003 = coalesce(educ,educ2003))

combine_edu <- combine_edu%>% mutate( education_1989 = coalesce(educ89,educ1989))
combine_edu_finished <- combine_edu %>% select(education_1989, education_2003) %>%

rand_df <- combine_edu_finished[sample(nrow(combine_edu_finished), size=1000), ]

# According to CDC, we classify education into three levels 
# Less than high school graduate # education_1989 00, 01~08 = education_2003 1 
# High School graduate  #education_1989 09-12 = education_2003 2
# More than high school graduate 

rand_df<- rand_df%>%
  mutate(education = case_when(
    education_1989 < 12 | education_2003 < 3 ~ "Less than high school" , 
    education_1989 == 12 | education_2003 == 3 ~ "High school graduate", 
    education_1989 > 12 &  education_1989 < 18 | education_2003 >3 & education_2003 < 9 ~ "More than high school graduate",
    education_1989 == 99 | education_2003 == 9 ~ "Unknown"
    
  ))

# Removing the repeated variables and combine the dataset into the original dataset 

mort1999_2020 <- mort1999_2020 %>% select(-educ89,-educ,  -educ1989, -educ2003)
mort1999_2020<- mort1999_2020 %>% select(-educr)

# Join two dataframe together 
mort1999_2020_edu <- bind_cols(mort1999_2020, combine_edu_finished)

mort1999_2020_edu <- mort1999_2020_edu  %>%
  mutate(education = case_when(
    education_1989 < 12 | education_2003 < 3 ~ "Less than high school" , 
    education_1989 == 12 | education_2003 == 3 ~ "High school graduate", 
    education_1989 > 12 &  education_1989 < 18 | education_2003 >3 & education_2003 < 9 ~ "More than high school graduate",
    education_1989 == 99 | education_2003 == 9 ~ "Unknown"
    
  )) %>%
  select(-education_1989, -education_2003)


mort1999_2020_edu <- mort1999_2020_edu  %>%select(-educflag)

saveRDS(mort1999_2020_edu, "mort1999_2020")
  
# Then create a simple dataframe as what we have done for diseases 1979


#####################################################################
########################ICD 10 dataset ##############################
#####################################################################

simple2020 <- mort1999_2020_edu %>%
  select(year, sex, ager12, `ucod disease`, ranum) %>%
  mutate(ager12 =  case_when(
    ager12 == 1 ~ "under 1 year",
    ager12 == 2 ~ "1-4 years",
    ager12 == 3 ~ "5-14 years",
    ager12 == 4 ~ "15-24 years",
    ager12 == 5 ~ "25-34 years",
    ager12 == 6 ~ "35-44 years",
    ager12 == 7 ~ "45-54 years",
    ager12 == 8 ~ "55-64 years",
    ager12 == 9 ~ "65-74 years",
    ager12 == 10 ~ "75-84 years",
    ager12 == 11 ~ "85 years and over",
    ager12 == 12 ~ "Age not stated"
  ))
# 
# # Split the data based on their different diseases 

diseases1999 <- split(simple2020 %>% select(-ranum), f=simple2020$`ucod disease`)

# #import population details 
 population_5 <- read.table("Population5.txt", header = TRUE)
# 
population1999 <- population_5 %>%
  filter(Year > 1998) %>%
  filter(Year < 2021) %>%
  mutate(ager12 = case_when(
    Age == "0" ~"1-4 years",
    Age =="1-4" ~ "under 1 year",
    Age == "5-9" ~"5-14 years",
    Age == "10-14" ~"5-14 years",
    Age == "15-19" ~"15-24 years",
    Age == "20-24" ~"15-24 years",
    Age == "25-29" ~"25-34 years",
    Age == "30-34" ~"25-34 years",
    Age == "35-39" ~"35-44 years",
    Age == "40-44" ~"35-44 years",
    Age == "45-49" ~"45-54 years",
    Age == "50-54" ~"45-54 years",
    Age == "55-59" ~"55-64 years",
    Age == "60-64" ~"55-64 years",
    Age == "65-69" ~"65-74 years",
    Age == "70-74" ~"65-74 years",
    Age == "75-79" ~"75-84 years",
    Age == "80-84" ~"75-84 years",
    Age == "85-89" ~"85 years and over",
    Age == "90-94" ~"85 years and over",
    Age == "95-99" ~"85 years and over",
    Age == "100-104" ~"85 years and over",
    Age == "105-109" ~"85 years and over",
    Age == "110+" ~"85 years and over"
  )) %>%
  select(-Age) %>%
  group_by(Year, ager12) %>%
  rename(year = Year) %>%
  summarise(`total population` =  sum(Total), `total female` = sum(Female), `total male` = sum(Male))

population1999$year <- as.integer(population1999$year)

# # Create a loop function to aggregate data into diseases count, year, female, 
# # male, total population 

for ( i in 1: length(diseases1999)){
  diseases1999[[i]]<- diseases1999[[i]] %>%
    group_by( year, ager12) %>%
    summarise(
      `female death` = sum(if_else(sex == "Female", 1, 0)),
      `male death ` = sum(if_else(sex == "Male", 1, 0)),
      `total population death` = sum( `female death` , `male death `))
  
  #   # Fully join the population and the data frames of 20 diseases 
  diseases1999[[i]]<- full_join(diseases1999[[i]],population1999, by =c("year", "ager12"))
}
# 
# # calculate the age standardised mortality rate depends on different diseases

for ( i in 1: length(diseases1999)){
  diseases1999[[i]]<- diseases1999[[i]] %>%
    mutate(`female motality rate` = round( `female death`/`total female` *100000, digits = 4)) %>%
    mutate(`male motality rate` = round(`male death `/`total male` *100000, digits = 4)) %>%
    mutate(`pop motality rate ` = round( `total population death`/`total population` *100000, digits = 4)) %>%
    select( year, ager12, `female motality rate`, `male motality rate`,
            `pop motality rate `) %>%
    gather(key = "Genders", value = "mortality", 3:5)
}

save(diseases1999, file = "1999DiseasesMortality.Rda")

#####################################################################
# Create a new list, combining all ucod diseases into one dataframe 
#####################################################################
diseases1979_2020 <- replicate(n=20, 
                               expr = {matrix(nrow = 10000, ncol = 4)},  
                               simplify = F)
# Assign the name  

names(diseases1979_2020) <- c( names(diseases1999) ) 

for (i in 1:length(diseases1979)){
  
  diseases1979_2020[[i]] <- full_join(diseases1979[[i]],diseases1999[[i]], 
                                      by =c("year", "ager12", "Genders", "mortality" ))
} 

save(diseases1979_2020, file = "DiseasesMortality1979_2020D.Rda")


