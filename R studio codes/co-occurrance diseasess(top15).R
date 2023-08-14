#############################################################################
############################# Prevalence of selected diseases###############
#############################################################################
mortality_1979_1998<- readRDS("mortality_1979_1998")
mortality_1999_2020<- readRDS("mortality_1999_2020")
simple2020<- mortality_1999_2020%>%select(year, ager12, sex)

# chronic diseases I am interested, therefore, we can reduce the time of process.
interested_diseases<- c("Other forms of heart disease", "Other respiratory diseases","Hypertensive heart disease", 
"Arteriosclerotic/ischaemic and degenerative", 
"Drug dependence, toxicomania", "Diabetes Mellitus", "Other obstructive pulmonary diseases", "Pneumonia", "Septicemia", 
"Cerebrovascular disease", "Nephritis, nephrosis and renal failure", "Overweight, obesity, and other hyperalimentation", 
"Alzheimer's disease", "Alcohol abuse",  "Other endocrine, nutritional and metabolic diseases")

#assign the name for each list 
interested_diseases_mcod <- replicate( n=15, 
                                    # Create the matrix with same length 
                                    # Only consider natural death
                                    expr = {matrix(nrow =56911051 , ncol = 1)}, 
                                    simplify = F)
names(interested_diseases_mcod ) <- interested_diseases

for (i in 1:length(interested_diseases_mcod )){
  
  # Obtain the location of the diseases 
  label<- which(mortality_1999_2020[, 14:33] ==  paste(names(interested_diseases_mcod)[i]), arr.ind = TRUE)
  
  # Gather the location and save in the new data frame 
  label_col <- label[, 1]
  
  #  Assign the values 
  interested_diseases_mcod[[i]][label_col] <- 1
  interested_diseases_mcod[[i]][is.na(interested_diseases_mcod[[i]]) ] <- 0
  interested_diseases_mcod[[i]] <- cbind(interested_diseases_mcod[[i]], simple2020)
  names(interested_diseases_mcod[[i]])[1] <- "disease_flag"
}

# I would like to know co-occurance in the relationship between the most prevalance mortality



colnames(equal_positions_df)<- interested_diseases
rownames(equal_positions_df)<- interested_diseases

# create a data vector
data_vector <-c()

for (i in 1:length(interested_diseases_mcod )){
  for(j in 1:length(interested_diseases_mcod )){
    
    equal_positions <- ( interested_diseases_mcod[[i]][[1]] == interested_diseases_mcod[[j]][[1]] &(interested_diseases_mcod[[i]][[1]] ==1))
    number_of_same_numbers <- sum(equal_positions)/56911051*1000
    data_vector<-c(data_vector ,number_of_same_numbers)
  }
}


data_matrix <- matrix(data_vector, nrow = 15, ncol = 15)
equal_positions_df<-  as.data.frame(data_matrix)
colnames(equal_positions_df)<- interested_diseases
rownames(equal_positions_df)<- interested_diseases

write.csv(equal_positions_df, "equal_positions_df.csv", row.names = TRUE)


equal_positions <- ( interested_diseases_mcod[[2]][[1]] == interested_diseases_mcod[[3]][[1]] &(interested_diseases_mcod[[2]][[1]] ==1))
number_of_same_numbers <- sum(equal_positions)/56911051*1000
number_of_same_numbers

