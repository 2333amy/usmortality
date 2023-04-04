#R studio Versions and related packages 
package_version("dplyr")
packageVersion("ggplot2")
packageVersion("tidyverse")
packageVersion("shiny")
citation("shiny")
citation("dplyr")
citation("tidyverse")
citation("ggplot2")
###########################################################
# create a vector including 00~99 (Part of ICD-10 Codes)
nums<- c(paste0("0", 0:9), 10:99)
#Adding letter in front of numbers (from A to Z)
#And mapping ICD-10 codes into different categories
certain_infectious_diseases<- sort(unlist(list(outer(LETTERS[1:2],nums, paste0))))
certain_infectious_diseases

malignant_neoplasm <- sort(unlist(list(outer(LETTERS[3],nums[-99:-100], paste0))))
malignant_neoplasm

other_neoplasms <- sort(unlist(list(outer(LETTERS[4], nums[1:49], paste0))))
other_neoplasms

blood_and_blood_forming_organs <- sort(unlist(list(outer(LETTERS[4], nums[51:90], paste0))))
blood_and_blood_forming_organs 

endocrine_nutritional_metabolic <- sort(unlist(list(outer(LETTERS[5], nums[1:91], paste0))))
endocrine_nutritional_metabolic

mental_behavioural_disorders <- sort(unlist(list(outer("F", nums, paste0))))
mental_behavioural_disorders

nervous_systems_sense_organs <- c(sort(unlist(list(outer("G", nums[-46], paste0)))),
                                  sort(unlist(list(outer("H", nums[1:96], paste0)))))
nervous_systems_sense_organs

heart_diseases <- sort(unlist(list(outer("I", nums[1:53], paste0))))
heart_diseases

cerebrovascular <- c(sort(unlist(list(outer("I", nums[61:70], paste0)))), "G45")
cerebrovascular

unspecific_disorders_of_the_circulatory_system <- sort(unlist(list(outer("I", nums[71:100], paste0))))
unspecific_disorders_of_the_circulatory_system 
# U04 = SARS, U07~U12 = COVID(related causes) are grouped into respiratory diseases
respiratory <- c(sort(unlist(list(outer("J", nums[1:48], paste0)))), sort(unlist(list(outer("J", nums[61:99], paste0)))),
                 "U04","U07", "U08", "U09", "U10", "U12" )
respiratory 

digestive_systems <- sort(unlist(list(outer("K", nums[1:94], paste0))))
digestive_systems

skin_subcutaneous_tissues <- sort(unlist(list(outer("L", nums, paste0))))
skin_subcutaneous_tissues

musculoskeletal_connective_tissue <- sort(unlist(list(outer("M", nums, paste0))))
musculoskeletal_connective_tissue

genitourinary <- sort(unlist(list(outer("N", nums, paste0))))
genitourinary

complications_of_pregnacy_childbirth_puerperium <- sort(unlist(list(outer("O", nums, paste0))))
complications_of_pregnacy_childbirth_puerperium 

certain_conditions_originating_in_the_perinatal_period<- sort(unlist(list(outer("P", nums, paste0))))
certain_conditions_originating_in_the_perinatal_period

congenital_malformations <- sort(unlist(list(outer("Q", nums, paste0))))
congenital_malformations 

ill_defined_or_unknown <- sort(unlist(list(outer("R", nums, paste0))))
ill_defined_or_unknown

external_cause<- sort(unlist(list(outer(LETTERS[22:25], nums, paste0))))
external_cause <- external_cause[-length(external_cause)]
external_cause
# To be noted, ICD-10 codes Starting with 'S' and 'T' is not included in SOA groupings
# Therefore, we use variables name 'Others' to replace these codes

other_cause <- sort(unlist(list(outer(LETTERS[19:20], nums, paste0))))
other_cause <- other_cause[-length(other_cause)]
other_cause
#########################################################################
# program start
library(dplyr)
library(tidyverse)
library(ggplot2)

#Upload the files 

mort1999<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1999.csv" )
mort2000<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2000.csv" )
mort2001<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2001.csv" )
mort2002<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2002.csv" )

#Select the variables from the original datasets 
#Please see reports reading of Reasons of choosing variables
#Since the variables share the same name in different data set, we uses same variables name to filter. 


colnames(mort1999)
column_99 <- colnames(mort1999[c("year", "restatus", "stateoc" , "staters" , "educr" ,  "monthdth", "sex",  "race", "ager12",
                                 "placdth"  ,  "marstat" , "hspanicr", "injwork" , "mandeath", "ucod", 
                                 "ranum", "record_1", "record_2", "record_3", "record_4", "record_5", "record_6", "record_7", 
                                 "record_8", "record_9", "record_10", "record_11", "record_12", "record_13", "record_14", 
                                 "record_15", "record_16", "record_17", "record_18", "record_19", "record_20" )])
column_99
data_process_99 <- function(x){
  y<- x[column_99]
  # Since the mortality code only contains one letter and 2 digits, 
  # we are using 'substr()'to keep the first 3 strings. 
  y_1 <- y%>%
    mutate(record_1 = substr(record_1, 1, 3)) %>%
    mutate(record_2 = substr(record_2, 1, 3)) %>%
    mutate(record_3 = substr(record_3, 1, 3)) %>%
    mutate(record_4 = substr(record_4, 1, 3)) %>%
    mutate(record_5 = substr(record_5, 1, 3)) %>%
    mutate(record_6 = substr(record_6, 1, 3)) %>%
    mutate(record_7 = substr(record_7, 1, 3)) %>%
    mutate(record_8= substr(record_8, 1, 3)) %>%
    mutate(record_9 = substr(record_9, 1, 3)) %>%
    mutate(record_10 = substr(record_10, 1, 3)) %>%
    mutate(record_11 = substr(record_11, 1, 3)) %>%
    mutate(record_12 = substr(record_12, 1, 3)) %>%
    mutate(record_13 = substr(record_13, 1, 3)) %>%  
    mutate(record_14 = substr(record_14, 1, 3)) %>%  
    mutate(record_15 = substr(record_15, 1, 3)) %>%
    mutate(record_16 = substr(record_16, 1, 3)) %>%
    mutate(record_17 = substr(record_17, 1, 3)) %>%
    mutate(record_18 = substr(record_18, 1, 3)) %>%
    mutate(record_19 = substr(record_19, 1, 3)) %>%
    mutate(record_20 = substr(record_20, 1, 3)) %>%
    mutate(ucod = substr(ucod, 1, 3))
  #Change ucod into diseases name 
  # Create a matrix to mapping ICD-10 codes and 20 diseases 
  for (i in  c(15,17:36)){
    diseases_name <- matrix(nrow=nrow(y_1),ncol=1)
    diseases_name[which(y_1[,i] %in% c(malignant_neoplasm)),1]="malignant neoplasm"
    diseases_name[which(y_1[,i] %in% c(blood_and_blood_forming_organs)),1]="blood and blood forming organs"
    diseases_name[which(y_1[,i] %in% c(cerebrovascular)),1]="cerebrovascular"
    diseases_name[which(y_1[,i] %in% c(certain_conditions_originating_in_the_perinatal_period)),1]="certain conditions originating in the perinatal period"
    diseases_name[which(y_1[,i] %in% c(certain_infectious_diseases)),1]="certain_infectious_diseases"
    diseases_name[which(y_1[,i] %in%  c(complications_of_pregnacy_childbirth_puerperium)),1]= "complications of pregnacy childbirth puerperium"
    diseases_name[which(y_1[,i] %in% c(congenital_malformations)),1]="congenital malformations"
    diseases_name[which(y_1[,i] %in% c(digestive_systems )),1]="digestive systems"
    diseases_name[which(y_1[,i] %in% c(endocrine_nutritional_metabolic)),1]="endocrine nutritional metabolic diseases"
    diseases_name[which(y_1[,i] %in% c(genitourinary)),1]="genitourinary"
    diseases_name[which(y_1[,i] %in% c(heart_diseases)),1]="heart diseases"
    diseases_name[which(y_1[,i] %in% c(ill_defined_or_unknown)),1]="ill defined or unknown diseases"
    diseases_name[which(y_1[,i] %in% c(mental_behavioural_disorders)),1]="mental behavioural disorders"
    diseases_name[which(y_1[,i] %in% c(musculoskeletal_connective_tissue)),1]="musculoskeleta _connective tissue"
    diseases_name[which(y_1[,i] %in% c(other_neoplasms)),1]="other neoplasms"
    diseases_name[which(y_1[,i] %in% c(respiratory)),1]="respiratory"
    diseases_name[which(y_1[,i] %in% c(skin_subcutaneous_tissues)),1]="skin subcutaneous tissues"
    diseases_name[which(y_1[,i] %in% c(unspecific_disorders_of_the_circulatory_system)),1]="unspecific disorders of the circulatory system"
    diseases_name[which(y_1[,i] %in% c(external_cause)),1]="external_cause"
    diseases_name[which(y_1[,i] %in% c(nervous_systems_sense_organs)),1]="nervous systems sense organs"
    diseases_name[which(y_1[,i] %in% c(other_cause)),1]="other_cause"
    y_1=cbind(y_1,diseases_name)
  } 
  old_names<- rep("diseases_name", 21)
  new_names<- c("ucod disease",paste0("disease_", seq(1, 20)))
  
  # Change the columns name and removal all original ICD-10 codes
  colnames(y_1)[37:57] <- new_names
  # Export the data as RDS
  # Smaller size and much faster than writing in csv. 
  # More efficient in re-load and manipulate the data sets. 
  y_1 <-y_1[c(-15, -17:-36)]
  saveRDS(y_1, paste0("new_mort", y_1[1, 1]))
}  


data_process_99(mort1999)
data_process_99(mort2000)
data_process_99(mort2001)
data_process_99(mort2002)

# From 2003, NCHS updated the version of education and methods of deposition 
# Moreover, autopsy was recorded as well.
mort2003<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2003.csv" )
mort2004<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2004.csv" )

colnames(mort2003)
column_03 <- colnames(mort2003[c("year", "restatus", "stateoc" , "staters","educ89","educ", "educflag","monthdth", "sex",  "race", "ager12",
                                 "placdth"  ,  "marstat" , "hspanicr", "injwork" , "mandeath", "autopsy" , "methdisp","ucod", 
                                 "ranum", "record_1", "record_2", "record_3", "record_4", "record_5", "record_6", "record_7", 
                                 "record_8", "record_9", "record_10", "record_11", "record_12", "record_13", "record_14", 
                                 "record_15", "record_16", "record_17", "record_18", "record_19", "record_20" )])
column_03
data_process_03<- function(x){
  y<- x[column_03]
  # Since the mortality code only contains one letter and 2 digits, 
  # we are using 'substr()'to keep the first 3 strings. 
  y_1 <- y%>%
    mutate(record_1 = substr(record_1, 1, 3)) %>%
    mutate(record_2 = substr(record_2, 1, 3)) %>%
    mutate(record_3 = substr(record_3, 1, 3)) %>%
    mutate(record_4 = substr(record_4, 1, 3)) %>%
    mutate(record_5 = substr(record_5, 1, 3)) %>%
    mutate(record_6 = substr(record_6, 1, 3)) %>%
    mutate(record_7 = substr(record_7, 1, 3)) %>%
    mutate(record_8= substr(record_8, 1, 3)) %>%
    mutate(record_9 = substr(record_9, 1, 3)) %>%
    mutate(record_10 = substr(record_10, 1, 3)) %>%
    mutate(record_11 = substr(record_11, 1, 3)) %>%
    mutate(record_12 = substr(record_12, 1, 3)) %>%
    mutate(record_13 = substr(record_13, 1, 3)) %>%  
    mutate(record_14 = substr(record_14, 1, 3)) %>%  
    mutate(record_15 = substr(record_15, 1, 3)) %>%
    mutate(record_16 = substr(record_16, 1, 3)) %>%
    mutate(record_17 = substr(record_17, 1, 3)) %>%
    mutate(record_18 = substr(record_18, 1, 3)) %>%
    mutate(record_19 = substr(record_19, 1, 3)) %>%
    mutate(record_20 = substr(record_20, 1, 3)) %>%
    mutate(ucod = substr(ucod, 1, 3))
  #Change ucod into diseases name 
  # Create a matrix to mapping ICD-10 codes and 20 diseases 
  for (i in  c(19,21:40)){
    diseases_name <- matrix(nrow=nrow(y_1),ncol=1)
    diseases_name[which(y_1[,i] %in% c(malignant_neoplasm)),1]="malignant neoplasm"
    diseases_name[which(y_1[,i] %in% c(blood_and_blood_forming_organs)),1]="blood and blood forming organs"
    diseases_name[which(y_1[,i] %in% c(cerebrovascular)),1]="cerebrovascular"
    diseases_name[which(y_1[,i] %in% c(certain_conditions_originating_in_the_perinatal_period)),1]="certain conditions originating in the perinatal period"
    diseases_name[which(y_1[,i] %in% c(certain_infectious_diseases)),1]="certain_infectious_diseases"
    diseases_name[which(y_1[,i] %in%  c(complications_of_pregnacy_childbirth_puerperium)),1]= "complications of pregnacy childbirth puerperium"
    diseases_name[which(y_1[,i] %in% c(congenital_malformations)),1]="congenital malformations"
    diseases_name[which(y_1[,i] %in% c(digestive_systems )),1]="digestive systems"
    diseases_name[which(y_1[,i] %in% c(endocrine_nutritional_metabolic)),1]="endocrine nutritional metabolic diseases"
    diseases_name[which(y_1[,i] %in% c(genitourinary)),1]="genitourinary"
    diseases_name[which(y_1[,i] %in% c(heart_diseases)),1]="heart diseases"
    diseases_name[which(y_1[,i] %in% c(ill_defined_or_unknown)),1]="ill defined or unknown diseases"
    diseases_name[which(y_1[,i] %in% c(mental_behavioural_disorders)),1]="mental behavioural disorders"
    diseases_name[which(y_1[,i] %in% c(musculoskeletal_connective_tissue)),1]="musculoskeleta _connective tissue"
    diseases_name[which(y_1[,i] %in% c(other_neoplasms)),1]="other neoplasms"
    diseases_name[which(y_1[,i] %in% c(respiratory)),1]="respiratory"
    diseases_name[which(y_1[,i] %in% c(skin_subcutaneous_tissues)),1]="skin subcutaneous tissues"
    diseases_name[which(y_1[,i] %in% c(unspecific_disorders_of_the_circulatory_system)),1]="unspecific disorders of the circulatory system"
    diseases_name[which(y_1[,i] %in% c(external_cause)),1]="external_cause"
    diseases_name[which(y_1[,i] %in% c(nervous_systems_sense_organs)),1]="nervous systems sense organs"
    diseases_name[which(y_1[,i] %in% c(other_cause)),1]="other_cause"
    y_1=cbind(y_1,diseases_name)
  } 
  old_names<- rep("diseases_name", 21)
  new_names<- c("ucod disease",paste0("disease_", seq(1, 20)))
  
  # Change the columns name and removal all original ICD-10 codes
  colnames(y_1)[41:61] <- new_names
  # Export the data as RDS
  # Smaller size and much faster than writing in csv. 
  # More efficient in re-load and manipulate the data sets. 
  y_1 <-y_1[c(-19, -21:-40)]
  saveRDS(y_1, paste0("new_mort", y_1[1, 1]))
}  

data_process_03(mort2003)
data_process_03(mort2004)

# State of occurrence and state of residence were not allowed to disclose after 2005#

mort2005<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2005.csv" )
mort2006<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2006.csv" )
mort2007<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2007.csv" )
mort2008<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2008.csv" )
mort2009<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2009.csv" )
mort2010<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2010.csv" )
mort2011<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2011.csv" )
mort2012<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2012.csv" )
mort2013<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2013.csv" )
mort2014<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2014.csv" )
mort2015<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2015.csv" )
mort2016<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2016.csv" )
mort2017<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2017.csv" )
mort2018<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2018.csv" )
mort2019<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2019.csv" )
mort2020<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2020.csv" )


colnames(mort2005)[3] <- "educ2003" 
colnames(mort2005)[2] <- "educ1989" 
column_05 <- colnames(mort2005[c("year", "restatus", "educ1989","educ2003", "educflag","monthdth", "sex",  "race", "ager12",
                                 "placdth"  ,  "marstat" , "hspanicr", "injwork" , "mandeath", "autopsy" , "methdisp","ucod", 
                                 "ranum", "record_1", "record_2", "record_3", "record_4", "record_5", "record_6", "record_7", 
                                 "record_8", "record_9", "record_10", "record_11", "record_12", "record_13", "record_14", 
                                 "record_15", "record_16", "record_17", "record_18", "record_19", "record_20" )])
column_05
data_process_05<- function(x){
  y<- x[column_05]
  # Since the mortality code only contains one letter and 2 digits, 
  # we are using 'substr()'to keep the first 3 strings. 
  y_1 <- y%>%
    mutate(record_1 = substr(record_1, 1, 3)) %>%
    mutate(record_2 = substr(record_2, 1, 3)) %>%
    mutate(record_3 = substr(record_3, 1, 3)) %>%
    mutate(record_4 = substr(record_4, 1, 3)) %>%
    mutate(record_5 = substr(record_5, 1, 3)) %>%
    mutate(record_6 = substr(record_6, 1, 3)) %>%
    mutate(record_7 = substr(record_7, 1, 3)) %>%
    mutate(record_8= substr(record_8, 1, 3)) %>%
    mutate(record_9 = substr(record_9, 1, 3)) %>%
    mutate(record_10 = substr(record_10, 1, 3)) %>%
    mutate(record_11 = substr(record_11, 1, 3)) %>%
    mutate(record_12 = substr(record_12, 1, 3)) %>%
    mutate(record_13 = substr(record_13, 1, 3)) %>%  
    mutate(record_14 = substr(record_14, 1, 3)) %>%  
    mutate(record_15 = substr(record_15, 1, 3)) %>%
    mutate(record_16 = substr(record_16, 1, 3)) %>%
    mutate(record_17 = substr(record_17, 1, 3)) %>%
    mutate(record_18 = substr(record_18, 1, 3)) %>%
    mutate(record_19 = substr(record_19, 1, 3)) %>%
    mutate(record_20 = substr(record_20, 1, 3)) %>%
    mutate(ucod = substr(ucod, 1, 3))
  #Change ucod into diseases name 
  # Create a matrix to mapping ICD-10 codes and 20 diseases 
  for (i in  c(17,19:38)){
    diseases_name <- matrix(nrow=nrow(y_1),ncol=1)
    diseases_name[which(y_1[,i] %in% c(malignant_neoplasm)),1]="malignant neoplasm"
    diseases_name[which(y_1[,i] %in% c(blood_and_blood_forming_organs)),1]="blood and blood forming organs"
    diseases_name[which(y_1[,i] %in% c(cerebrovascular)),1]="cerebrovascular"
    diseases_name[which(y_1[,i] %in% c(certain_conditions_originating_in_the_perinatal_period)),1]="certain conditions originating in the perinatal period"
    diseases_name[which(y_1[,i] %in% c(certain_infectious_diseases)),1]="certain_infectious_diseases"
    diseases_name[which(y_1[,i] %in%  c(complications_of_pregnacy_childbirth_puerperium)),1]= "complications of pregnacy childbirth puerperium"
    diseases_name[which(y_1[,i] %in% c(congenital_malformations)),1]="congenital malformations"
    diseases_name[which(y_1[,i] %in% c(digestive_systems )),1]="digestive systems"
    diseases_name[which(y_1[,i] %in% c(endocrine_nutritional_metabolic)),1]="endocrine nutritional metabolic diseases"
    diseases_name[which(y_1[,i] %in% c(genitourinary)),1]="genitourinary"
    diseases_name[which(y_1[,i] %in% c(heart_diseases)),1]="heart diseases"
    diseases_name[which(y_1[,i] %in% c(ill_defined_or_unknown)),1]="ill defined or unknown diseases"
    diseases_name[which(y_1[,i] %in% c(mental_behavioural_disorders)),1]="mental behavioural disorders"
    diseases_name[which(y_1[,i] %in% c(musculoskeletal_connective_tissue)),1]="musculoskeleta _connective tissue"
    diseases_name[which(y_1[,i] %in% c(other_neoplasms)),1]="other neoplasms"
    diseases_name[which(y_1[,i] %in% c(respiratory)),1]="respiratory"
    diseases_name[which(y_1[,i] %in% c(skin_subcutaneous_tissues)),1]="skin subcutaneous tissues"
    diseases_name[which(y_1[,i] %in% c(unspecific_disorders_of_the_circulatory_system)),1]="unspecific disorders of the circulatory system"
    diseases_name[which(y_1[,i] %in% c(external_cause)),1]="external_cause"
    diseases_name[which(y_1[,i] %in% c(nervous_systems_sense_organs)),1]="nervous systems sense organs"
    diseases_name[which(y_1[,i] %in% c(other_cause)),1]="other_cause"
    y_1=cbind(y_1,diseases_name)
  } 
  old_names<- rep("diseases_name", 21)
  new_names<- c("ucod disease",paste0("disease_", seq(1, 20)))
  
  # Change the columns name and removal all original ICD-10 codes
  colnames(y_1)[39:59] <- new_names
  # Export the data as RDS
  # Smaller size and much faster than writing in csv. 
  # More efficient in re-load and manipulate the data sets. 
  y_1 <-y_1[c(-17, -19:-38)]
  saveRDS(y_1, paste0("new_mort", y_1[1, 1]))
}  

data_process_05(mort2005)
data_process_05(mort2006)
data_process_05(mort2007)
data_process_05(mort2008)
data_process_05(mort2009)
data_process_05(mort2010)
data_process_05(mort2011)
data_process_05(mort2012)
data_process_05(mort2013)
data_process_05(mort2014)
data_process_05(mort2015)
data_process_05(mort2016)
data_process_05(mort2017)
data_process_05(mort2018)
data_process_05(mort2019)

# We add extra variables if the patients die with/of covid-19 in 2020. 
# As indicated in ICD_10 code, the U07~U12 represent the code of covid-19. 
mort2020_1 <- mort2020[column_05]

# Since the mortality code only contains one letter and 2 digits, 
# we are using 'substr()'to keep the first 3 strings. 
mort2020_2 <-mort2020_1 %>%
  mutate(record_1 = substr(record_1, 1, 3)) %>%
  mutate(record_2 = substr(record_2, 1, 3)) %>%
  mutate(record_3 = substr(record_3, 1, 3)) %>%
  mutate(record_4 = substr(record_4, 1, 3)) %>%
  mutate(record_5 = substr(record_5, 1, 3)) %>%
  mutate(record_6 = substr(record_6, 1, 3)) %>%
  mutate(record_7 = substr(record_7, 1, 3)) %>%
  mutate(record_8= substr(record_8, 1, 3)) %>%
  mutate(record_9 = substr(record_9, 1, 3)) %>%
  mutate(record_10 = substr(record_10, 1, 3)) %>%
  mutate(record_11 = substr(record_11, 1, 3)) %>%
  mutate(record_12 = substr(record_12, 1, 3)) %>%
  mutate(record_13 = substr(record_13, 1, 3)) %>%  
  mutate(record_14 = substr(record_14, 1, 3)) %>%  
  mutate(record_15 = substr(record_15, 1, 3)) %>%
  mutate(record_16 = substr(record_16, 1, 3)) %>%
  mutate(record_17 = substr(record_17, 1, 3)) %>%
  mutate(record_18 = substr(record_18, 1, 3)) %>%
  mutate(record_19 = substr(record_19, 1, 3)) %>%
  mutate(record_20 = substr(record_20, 1, 3)) %>%
  mutate(ucod = substr(ucod, 1, 3))

