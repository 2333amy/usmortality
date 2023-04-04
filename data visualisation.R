###### Using small dataset mort1979~1992 to illustrate the main idea  
mort2005_2019 <- readRDS("mort_2005_2019")
######################
library(tidyverse)
#For print out nice table format 
install.packages("stargazer")
library(stargazer)

stargazer(df1, type = 'text', out = 'summary of number of deaths.txt')
pander::pander(df1)

### Per cent of death - the number of multiple causes of death (ranum)
df2 <- mort2005_2019 %>%
  mutate(agg_ranum = if_else(ranum >= 5, " 5 or more cases", paste0(ranum, " case(s)"), missing = "missing"))
df2

barchart1 <- ggplot(data = df2, aes(x=year, fill=agg_ranum))+
  geom_bar(position = "fill")+
  labs(x = "Year", y="Proportion of deaths",color = "The number of multiple causes of death",
       title = "Figure 1: The trends in the number of diseases recorded , 2005 to 2019")+
  guides(fill=guide_legend(title = "The number of causes"))+
  theme_minimal()
barchart1


                   
df4 <-  mort2005_2019 %>%
  select(year, ager12, ranum) %>%
  mutate( 
       age_band = case_when(
    ager12 == 1 ~"Under 1 year", 
    ager12 == 2 ~"1 - 4 year", 
    ager12 == 3 ~"5 - 14 year", 
    ager12 == 4 ~"15 - 24 year", 
    ager12 == 5 ~"25 - 34 year", 
    ager12 == 6 ~"35 - 44 year", 
    ager12 == 7 ~"45 - 54 year", 
    ager12 == 8 ~"55 - 64 year", 
    ager12 == 9 ~"65 - 74 year", 
    ager12 == 10 ~"75 - 84 year", 
    ager12 == 11 ~"85 years and over",
    ager12 == 12 ~"Age not stated", 
    TRUE ~ NA_character_))

df4_1 <- df4 %>%
  group_by(year, age_band)%>%
  summarise(total_count =n(), avg_ranum = mean(ranum, na.rm = TRUE))
head(df4_1)

install.packages("RColorBrewer")                  
library("RColorBrewer")

linegraph2 <-  ggplot(data= df4_1, aes(x=age_band, y=avg_ranum, group = year, color= year))+
  geom_line()+
  labs(x = "Age Group ", y="Average of causes",
       title = "Figure 2: The trends of causes of death among different age group population, 2005 to 2019")+
  guides(fill=guide_legend(title = "Year"))+
  ylim(1.0, 4.0)+
  theme_classic()
 
linegraph2+  theme(axis.text.x = element_text(face= "bold", size=10, angle = 45))


colnames( mort2005_2019)
#######natural death 
df5 <- mort2005_2019 %>%
  select(year,mandeath, ranum )%>%
  mutate(mannerofdeath = if_else(
    mandeath == 7 , "Natural death", "Unnatural death", missing="Unspecific"
  ))%>%
  group_by(year, mannerofdeath)%>%
  summarise(count=n(), avg_mcod =  mean(ranum, na.rm = TRUE))%>%
  mutate(total_count=sum(count)) %>%
  group_by(year, add=TRUE) %>%
  mutate(percentage = round(100*count/total_count, 2))

df5
pander::pander(df5)

df6 <- mort2005_2019 %>%
  select(year,mandeath, ranum )%>%
  mutate(mannerofdeath = if_else(
    mandeath == 7 , "Natural death", "Unnatural death", missing="Unspecific"
  ))

head(df6)
barchart2 <- ggplot(data = df6, aes(x=year, fill=mannerofdeath))+
  geom_bar(position = "fill")+
  labs(x = "Year", y="Proportion of manner of death",
       title = "Figure 3: The trends of manner of death , 2005 to 2019")+
  guides(fill=guide_legend(title = "The manner of death"))+
  theme_minimal()
barchart2

barchart3 <- ggplot(data = df5, aes(x=year, y=percentage, fill=mannerofdeath))+
  geom_bar(position = "fill")+
  labs(x = "Year", y="Proportion of manner of death",
       title = "Figure 3: The trends of manner of death , 2005 to 2019")+
  guides(fill=guide_legend(title = "The manner of death"))+
  theme_minimal()
barchart3

barchart3 <- ggplot(data = df5, aes(fill=mannerofdeath, y=percentage, x=year))+
  geom_bar(position = "fill",stat='identity')




####### Charts of different races 

df6 <- mort2005_2019%>%
  select(year, race, ranum) %>%
  mutate(race_detailed = case_when(
    race == 1 ~"White", 
    race == 2 ~"Black",
    race == 3 ~"American Indian", 
    race == 4 ~"Chinese",
    race == 5 ~"Japanese", 
    race == 6 ~"Hawaiian",
    race == 7 ~"Filipino", 
    race == 18 ~"Asian Indian",
    race == 28 ~"Korean",
    race == 38 ~"Samoan",
    race == 48 ~"Vietnamese",
    race == 58 ~"Guamanian",
    race == 68 ~"Other Asian or Pacific Islander",
    race == 78 ~"Combined other Asian or Pacific Islander")) %>%
  group_by(year, race_detailed) %>%
  summarise(ave_ranum = mean(ranum))
df6

linechart2<- ggplot(data= df6, aes(x=year, y= ave_ranum, group = race_detailed, color = race_detailed))+
  geom_line()+
  labs(x = "Year ", y="Average number of causes",
       title = "Figure 4: The trends of causes of death among different races groups")+
  guides(fill=guide_legend(title = "Detailed race"))+
  ylim(2.0, 4.0)+
  theme_classic()
linechart2 
  
####### SOA 20 groupings 






