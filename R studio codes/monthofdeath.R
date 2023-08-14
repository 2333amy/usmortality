##################################### Data quality #############################
# examine the basic variables #
################################################################################

# year, staters, monthdth, sex, race, ager12, hospstat, marstat, 
#          origin, educr, placdth, hspanicr

mortality_1979_1998<- mortality_1979_1998 %>%
  mutate(year = coalesce(datayear, year)) %>%
  select(-datayear) 



monthdth_1979<- mortality_1979_1998 %>%
  select(year, monthdth)%>%
  group_by(year, monthdth)%>%
  summarise(Count = n())

monthdth_1999<- mortality_1999_2020 %>%
  select(year, monthdth)%>%
  group_by(year, monthdth)%>%
  summarise(Count = n())
monthdth_1979$monthdth <- factor(monthdth_1979$monthdth, c("January",  "February" , "March",  
                                                           "April" , "May", "June"  ,"July", 
                                                           "August" , "September",                   
                                                           "October" , "November", "December"     ))

monthdth_1999$monthdth <- factor(monthdth_1999$monthdth, c("January",  "February" , "March",  
                                                           "April" , "May", "June"  ,"July", 
                                                           "August" , "September",                   
                                                           "October" , "November", "December"     ))


monthdth_1979_2000<- bind_rows(monthdth_1979,monthdth_1999)%>%
  rename(Year = year)%>%
  rename(`Month of Death` = monthdth)
saveRDS(monthdth_1979_2000, "monthdth_1979_2000")

monthdth_1979_2000$Year <- as.character(monthdth_1979_2000 $Year)

ggplot(data = monthdth_1979_2000 %>% filter_at(vars(Year), 
                                               any_vars(. %in% c("1979" ,"1989" ,"1999", "2009", "2019", "2020"))), 
       aes(x = `Month of Death`, y = Count, group = Year)) +
  geom_line(aes(color = Year)) +
  scale_color_manual(values = brewer.pal(8, "Dark2")) +
  theme_classic() +
  theme(text = element_text(size = 12, family = "Times New Roman" )) +
  guides(color = guide_legend(title = "Year")) +
  theme(legend.position = "top") +
  ylab("Count of death") +
  xlab("Month")




