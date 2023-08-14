#proportion of disease distribution #
mort_1979_1998<- readRDS("")
#underlying causes of death 
disease_92_count_79 <- mortality_1979_1998 %>%
  select(year,`ucod disease`)%>%
  group_by (year,`ucod disease`)%>%
  summarise(Count= n())%>%
  group_by(year) %>%
  mutate(`Total Deaths` = sum(Count))

disease_92_count_79<- disease_92_count_79  %>%
  drop_na()%>%
  mutate(Percentage = round(Count/`Total Deaths`*100, 2))%>%
  group_by(year) %>%
  arrange(desc(Percentage)) %>%
  slice(1:10)
  
disease_92_count_99 <- mortality_1999_2020 %>%
  select(year,`ucod disease`)%>%
  group_by (year,`ucod disease`)%>%
  summarise(Count= n())%>%
  group_by(year) %>%
  mutate(`Total Deaths` = sum(Count))

disease_92_count_99<- disease_92_count_99  %>%
  drop_na()%>%
  mutate(Percentage = round(Count/`Total Deaths`*100, 2))%>%
  group_by(year) %>%
  arrange(desc(Percentage)) %>%
  slice(1:10)

# combine those two dataset draw the trend pf proportion of disease distribution 
my_palette <- colorRampPalette(brewer.pal(9, "Set3"))(15)

disease_92_count_79_20 <- bind_rows(disease_92_count_79, disease_92_count_99)%>%
  rename(Year = year)%>%
  rename(Disease = `ucod disease`)

ggplot(disease_92_count_79_20,aes( x= Year, y= Percentage , group= Disease))+
  geom_line(aes(color=Disease))+
  scale_x_continuous(breaks=seq(1979,2020, by=10))+
  scale_color_manual(values = my_palette) +
  theme_classic() +
  theme(text=element_text(size=12, family = "Times New Roman" )) +
  ylab("Percentage") +
  xlab("Year")+
  theme(legend.position = "right")

disease_92_count_79_20$Rank <- rep(seq(1, 10, 1), 42)

disease_92_count_79_20_wide<- disease_92_count_79_20%>%
  select(Year, Disease, Rank)%>%
  pivot_wider(
    names_from = Rank,
    values_from = Disease
  )

disease_92_count_79_20_wide_percentage<- disease_92_count_79_20%>%
  select(Year, Percentage, Rank)%>%
  pivot_wider(
    names_from = Rank,
    values_from = Percentage
  )


disease_92_count_79_20_final_version <-gather(disease_92_count_79_20_wide_disease_percentage, key="Rank", value="Percentage", 2:11)


write.csv(disease_92_count_79_20, "disease_92_count_79_20.csv", row.names=TRUE)

write.csv(disease_92_count_79_20_wide, "disease_92_count_79_20_wide_disease_rank.csv", row.names=TRUE)
write.csv(disease_92_count_79_20_wide_percentage, "disease_92_count_79_20_wide_disease_percentage.csv", row.names=TRUE)

disease_92_count_79_20_wide_disease_percentage <- disease_92_count_79_20_wide_disease_percentage%>%
  select(-...1)
saveRDS(disease_92_count_79_20_wide_disease_percentage, "disease_92_count_79_20_wide_disease_percentage")





NumberOfRanum_1979_2020_2<- NumberOfRanum_1979_2020_2%>%
  rename(`5 or more causes` = `5 or more cases` ) %>%
  rename(`4 causes` = `4 case(s)` ) %>%
  rename(`3 causes` = `3 case(s)` ) %>%
  rename(`2 causes` = `2 case(s)` ) %>%
  rename(`1 cause` = `1 case(s)` ) %>%
  rename(`0 cause` = `0 case(s)` ) %>%
  
  NumberOfRanum_1979_2020_2<- NumberOfRanum_1979_2020_2%>% 
  rename(Year = year)%>%
  rename(`Total Death Count` = `total mortality`)
  
NumberOfRanum_1979_2020_3 <- NumberOfRanum_1979_2020_2 %>%
  select(-`Total Death Count`) %>%
  pivot_longer(
  cols = -Year, 
 names_to = "Number of causes", 
values_to = "Total Death Count")

ggplot(NumberOfRanum_1979_2020_3, aes(fill=`Number of causes`, y=`Total Death Count`, x=Year)) + 
  geom_bar(position="fill", stat="identity")+
  scale_x_continuous(breaks=seq(1979,2020, by=10))+
  scale_fill_manual(values = c("#1B9E77", "#D95F02" ,"#7570B3", "#E7298A" ,"#66A61E" ,"#E6AB02" )) +
  theme_classic() +
  theme(text=element_text(size=12, family = "Times New Roman" )) +
  ylab("Percentage") +
  xlab("Year")+
  theme(legend.position = "top")


















