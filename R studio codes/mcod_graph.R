################Calculate the death rate and Prevalence using 92 diseases####### 
# Interested diseases selected based on the top 15 diseases in 2020 
interested_diseases<- c("Other forms of heart disease", "Other respiratory diseases","Hypertensive heart disease", 
                        "Arteriosclerotic/ischaemic and degenerative", 
                        "Drug dependence, toxicomania", "Diabetes Mellitus", "Other obstructive pulmonary diseases", "Pneumonia", "Septicemia", 
                        "Cerebrovascular disease", "Nephritis, nephrosis and renal failure", "Overweight, obesity, and other hyperalimentation", 
                        "Alzheimer's disease", "Alcohol abuse",  "Other endocrine, nutritional and metabolic diseases")

####################################1999-2020####################################
simple2020<- mortality_1999_2020%>%select(year, ager12, sex)
#assign the name for each list 
diseases_92_list_mcod <- replicate( n=83, 
                                    # Create the matrix with same length 
                                    # Only consider natural death
                                    expr = {matrix(nrow =56911051 , ncol = 1)}, 
                                    simplify = F)
names(diseases_92_list_mcod) <- disease_92_list
for (i in 1:length(diseases_92_list_mcod)){
  
  # Obtain the location of the diseases 
  label<- which(mortality_1999_2020[, 14:33] ==  paste(names(diseases_92_list_mcod)[i]), arr.ind = TRUE)
  
  # Gather the location and save in the new data frame 
  label_col <- label[, 1]
  
  #  Assign the values 
  diseases_92_list_mcod[[i]][label_col] <- 1
  diseases_92_list_mcod[[i]][is.na( diseases_92_list_mcod [[i]]) ] <- 0
  diseases_92_list_mcod[[i]] <- cbind(diseases_92_list_mcod[[i]], simple2020)
  names(diseases_92_list_mcod [[i]])[1] <- "disease_flag"
}

for (i in 1:length(diseases_92_list_mcod)){
  
  diseases_92_list_mcod[[i]] <- diseases_92_list_mcod[[i]]  %>%
    group_by(year, sex, ager12) %>%
    summarise(
      count_flag = sum(if_else(disease_flag == 1, 1, 0)), 
      count_non = sum(if_else(disease_flag == 0 , 1, 0)), 
      count_total  = sum(count_flag ,  count_non), 
      percentage = round((count_flag/count_total )*100, 2))
  
}




# Convert the list into diseases, the dieases and population, and prevalance 
for (i in 1:length(diseases_92_list_mcod)){
  diseases_92_list_mcod[[i]] <-   diseases_92_list_mcod[[i]] %>%
    select(-percentage, -count_non) %>%
    filter(ager12 != "Age not stated" )%>%
    group_by(year)%>%
    mutate(total_count = sum(count_flag)) %>%
    mutate(population =sum(count_total))
}


# Calculate the population prevalence *100, 000 population 
for (i in 1:length(diseases_92_list_mcod)){
  diseases_92_list_mcod[[i]]<-diseases_92_list_mcod[[i]] %>%select(year, ager12, total_count,population )%>%
    select(-ager12)%>%
    group_by(year)%>%
    distinct() %>%
    rename(Mortality = population) %>%
    mutate(prevalence=total_count / population *100000)
}
# Save as back up 

saveRDS(diseases_92_list_mcod, "diseases_92_list_totalmortality_totalmentioned_disease_mcod_1999_2020")
diseases_92_list_totalmortality_totalmentioned_disease_mcod_1999_2020<- readRDS("diseases_92_list_totalmortality_totalmentioned_disease_mcod_1999_2020")




diseases_92_list_mcod_1999_2020_df <- data.frame(matrix(nrow = 83, ncol = 23))
colnames(
  diseases_92_list_mcod_1999_2020_df) <- c("Disease", 1999:2020)

diseases_92_list_mcod_1999_2020_df$Disease <- c(names(diseases_92_list_totalmortality_totalmentioned_disease_mcod_1999_2020))


for (i in 1:length(diseases_92_list_totalmortality_totalmentioned_disease_mcod_1999_2020)){
  diseases_92_list_mcod_1999_2020_df[i,2:23 ]<- diseases_92_list_totalmortality_totalmentioned_disease_mcod_1999_2020[[i]][["total_count"]] 
  
}

diseases_92_list_mcod_1999_2020_df <- diseases_92_list_mcod_1999_2020_df %>%arrange(Disease)
# from 1999-2020, the total dieases mentioned 
saveRDS(diseases_92_list_mcod_1999_2020_df, "diseases_92_list_mcod_1999_2020_df_total_count")


#ucod, mortality from 1999-2020
diseases_92_list_ucod_1999_2020_df <- mortality_1999_2020 %>%
  select(year, `ucod disease`) %>%
  group_by(year, `ucod disease`)%>%
  summarise(count = n())

# pivot into wider table
diseases_92_list_ucod_1999_2020_df <- diseases_92_list_ucod_1999_2020_df  %>%
  pivot_wider(
    names_from = year, 
    values_from = count
  ) %>%
  rename(Disease = `ucod disease`)

saveRDS(diseases_92_list_ucod_1999_2020_df, "diseases_92_list_ucod_1999_2020_df")

diseases_92_list_ucod_1999_2020_df<- as.data.frame(diseases_92_list_ucod_1999_2020_df)
#remove Na and covid- not in the history 
ratio_1999_2020 <- round(diseases_92_list_mcod_1999_2020_df[, 2:23] /diseases_92_list_ucod_1999_2020_df[1:83 , 2:23], 2)

ratio_1999_2020$Disease <- sort(names(diseases_92_list_totalmortality_totalmentioned_disease_mcod_1999_2020))
# Final output 
ratio_1999_2020 <- ratio_1999_2020%>% select( Disease, everything())
saveRDS(ratio_1999_2020, "ratio_1999_2020_df")


ratio_1999_2020 %>%
  kbl() %>%
  kable_classic_2( html_font = "Times")


for (i in 1:length(diseases_92_list_totalmortality_totalmentioned_disease_mcod_1999_2020)){
  diseases_92_list_totalmortality_totalmentioned_disease_mcod_1999_2020[[i]]<- as.data.frame(diseases_92_list_totalmortality_totalmentioned_disease_mcod_1999_2020[[i]])
  
}


diseases_mcoc_list_for_graphs <- diseases_92_list_totalmortality_totalmentioned_disease_mcod_1999_2020

for (i in 1:length(diseases_mcoc_list_for_graphs)){
  diseases_mcoc_list_for_graphs[[i]]<- diseases_mcoc_list_for_graphs[[i]]%>%
    select(year,prevalence)%>%
    mutate(Disease = names(diseases_mcoc_list_for_graphs[i]))%>%
    rename(CSMR = prevalence)
  
}

saveRDS(diseases_mcoc_list_for_graphs, "diseases_mcoc_list_for_graphs")

diseases_mcoc_list_for_graphs <- bind_rows(diseases_mcoc_list_for_graphs )

diseases_mcoc_list_for_graphs$CSMR <- round(diseases_mcoc_list_for_graphs$CSMR, 2)


diseases_mcoc_list_for_graphs_groups <- split(unique(diseases_mcoc_list_for_graphs$Disease),
                                              cut(1:83, breaks = 4, labels= FALSE))

diseases_mcoc_list_for_graphs_groups_2<-lapply(diseases_mcoc_list_for_graphs_groups, function(diseases) {
  diseases_mcoc_list_for_graphs %>% filter(Disease %in% diseases)
  })

saveRDS(diseases_mcoc_list_for_graphs_groups_2, "diseases_mcoc_list_for_graphs_groups_into_4_df_final_version")


plot_list <- lapply(diseases_mcoc_list_for_graphs_groups_2, function(data) {
  ggplot(data, aes(x = year, y = CSMR)) + 
    geom_line() + 
    theme_classic() +
    theme(text=element_text(size=7, family = "Times New Roman" )) +
    ylab("Cause Specific Mortality Rate") +
    xlab("Year")+
    facet_wrap(~ Disease,ncol=3,  scales = "free")
})

# To view the plot
print(plot_list[[1]])
print(plot_list[[2]])
print(plot_list[[3]])
print(plot_list[[4]])



###############Ucod
for (i in 1:length(ucod_broad_diseases_cause_specific_death_rate)){
  
  ucod_broad_diseases_cause_specific_death_rate[[i]]<- ucod_broad_diseases_cause_specific_death_rate[[i]]%>%
    rename(Age = ager12)%>%
    mutate(Gender = 
             case_when(Genders == "female motality rate" ~ "Female", 
                       Genders == "male motality rate" ~ "Male", 
                       Genders == "pop motality rate " ~ "Unisex")
           )%>%
    select(-Genders)
}



for (i in 1:length(ucod_broad_diseases_cause_specific_death_rate)){
  
  ucod_broad_diseases_cause_specific_death_rate[[i]]<- ucod_broad_diseases_cause_specific_death_rate[[i]]%>%
    rename(Mortality= mortality )%>%
    rename(Year = year)

}

for (i in 1:length(ucod_broad_diseases_cause_specific_death_rate)){
  ucod_broad_diseases_cause_specific_death_rate[[i]]<- ucod_broad_diseases_cause_specific_death_rate[[i]]%>%
    group_by(Year, Gender)%>%drop_na() %>%summarise(Mortality = sum(Mortality))

  
  }


for (i in 1:length(ucod_broad_diseases_cause_specific_death_rate)){
  ucod_broad_diseases_cause_specific_death_rate[[i]]<- ucod_broad_diseases_cause_specific_death_rate[[i]]%>%
    filter(Year != 2020)
    
  
  
}
saveRDS(ucod_broad_diseases_cause_specific_death_rate, "ucod_broad_diseases_cause_specific_death_rate_final_version")





ggplot(ucod_broad_diseases_cause_specific_death_rate[[3]], aes(x=Year, y= Mortality, group= Gender))+
  geom_line()


ucod_broad_diseases_cause_specific_death_rate_final_version <- 
  readRDS("ucod_broad_diseases_cause_specific_death_rate_final_version")

