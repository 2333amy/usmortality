
############ICD 8 code mapping ############
###########################################
library(tidyverse)
nums<- c(paste0("00", 1:9), paste0("0", 10:99), 100:999)
nums

nums_0<- c(paste0("0", 0:9), paste0(10:99))
nums_0
certain_infectious_diseases<- sort(nums[1:136])
certain_infectious_diseases

### There is no records between 137~139
malignant_neoplasm <- sort(nums[140:209])
malignant_neoplasm

other_neoplasms <- sort(nums[210:239])
other_neoplasms

endocrine_nutritional_metabolic <- sort(nums[240:279])
endocrine_nutritional_metabolic

blood_and_blood_forming_organs <- sort(nums[280:289])
blood_and_blood_forming_organs 

mental_behavioural_disorders <-sort(nums[290:315])
mental_behavioural_disorders

#######316~319 left blank

nervous_systems_sense_organs <- sort(nums[320:389])
nervous_systems_sense_organs

heart_diseases <- sort(nums[c(390:429, 450)])
heart_diseases

cerebrovascular <-sort(nums[430:438])
cerebrovascular

#######439 left blank
#######449 left blank
unspecific_disorders_of_the_circulatory_system <- sort(nums[c(440:448, 451:458)])
unspecific_disorders_of_the_circulatory_system 
#######459, 475~479, 487~498, 494~499 left blank
respiratory <- sort(nums[c(460:474, 480:486, 490:493, 500:519)])
respiratory 

digestive_systems <- sort(nums[520:577])
digestive_systems

skin_subcutaneous_tissues <- sort(nums[680:709])
skin_subcutaneous_tissues

musculoskeletal_connective_tissue <- sort(nums[710:738])
musculoskeletal_connective_tissue

genitourinary <- sort(nums[c(580:629,792 )])
genitourinary

complications_of_pregnacy_childbirth_puerperium <-sort(nums[630:678])
complications_of_pregnacy_childbirth_puerperium 

certain_conditions_originating_in_the_perinatal_period<- sort(nums[760:779])
certain_conditions_originating_in_the_perinatal_period

congenital_malformations <- sort(nums[740:759])
congenital_malformations 

ill_defined_or_unknown <- sort(nums[c(780:791, 793:796)])
ill_defined_or_unknown

# There is no prefix `E` in the records between 1968~ 1978
# Therefore, I deleted `E` using all digits to represent external causes 
# Which is a little bit different from SOA mapping 
external_cause<- sort( nums[800:999])
external_cause


# Mapping between ICD-8 codes and SOA diseases grouping contains all the dieases listed in ICD-8 groupings 


#############Extract the data from 1968 to 1978############# 
library(data.table)
library(readr)
library(dplyr)

mort1968<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1968.csv" )
mort1968$datayear[mort1968$datayear==8] <- 1968

mort1969<- read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1969.csv" )
mort1969$datayear[mort1969$datayear==9] <- 1969

mort1970<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1970.csv" )
mort1970$datayear[mort1970$datayear==0] <- 1970

mort1971<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1971.csv" )
mort1971$datayear[mort1971$datayear==1] <- 1971

mort1972<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1972.csv" )
mort1972$datayear[mort1972$datayear==2] <- 1972

mort1973<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1973.csv" )
mort1973$datayear[mort1973$datayear==3] <- 1973


mort1974<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1974.csv" )
mort1973$datayear[mort1974$datayear==4] <- 1974


mort1975<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1975.csv" )
mort1975$datayear[mort1975$datayear==5] <- 1975

mort1976<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1976.csv" )
mort1976$datayear[mort1976$datayear==6] <- 1976

mort1977<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1977.csv" )
mort1977$datayear[mort1977$datayear==7] <- 1977

mort1978<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1978.csv" )
mort1978$datayear[mort1978$datayear==8] <- 1978

column_68 <- colnames(mort1968[c("datayear", "restatus", "stateoc" , "staters" , "monthdth", "sex",  "race", "ager12",
                                   "autopsy" , "ucod", 
                                  "ranum", "record_1", "record_2", "record_3", "record_4", "record_5", "record_6", "record_7", 
                                  "record_8", "record_9", "record_10", "record_11", "record_12", "record_13", "record_14")])
column_68
mort1968_1 <- mort1968[c("datayear", "restatus", "staters" ,"stateoc" ,  "monthdth", "sex",  "race", "ager12",
                         "autopsy" , "ucod", 
                         "ranum", "record_1", "record_2", "record_3", "record_4", "record_5", "record_6", "record_7", 
                         "record_8", "record_9", "record_10", "record_11", "record_12", "record_13", "record_14")]

mort1968_str <- mort1968_1 %>%
  select(starts_with("E"))

  
#add leading zero before ucod 
library(stringr)
mort1968_1$ucod<- str_pad(mort1968_1$ucod, 5)

  
data_process_68 <- function(x){
  y<- x[column_68]
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
    mutate(ucod = substr(ucod, 1, 3))
  #Change ucod into diseases name 
  
  for (i in  c(10,12:25)){
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
    y_1=cbind(y_1,diseases_name)
  } 
  old_names<- rep("diseases_name", 15)
  new_names<- c("ucod disease",paste0("disease_", seq(1, 14)))
  
  # Change the columns name and removal all original ICD-10 codes
  colnames(y_1)[26:40] <- new_names
  
  y_1 <-y_1[c(-10, -12:-25)]
  saveRDS(y_1, paste0("new_mort", y_1[1, 1]))
}  





data_process_68(mort1968)
data_process_68(mort1969)
data_process_68(mort1970)
data_process_68(mort1971)
data_process_68(mort1972)
data_process_68(mort1973)
data_process_68(mort1974)
data_process_68(mort1975)
data_process_68(mort1976)
data_process_68(mort1977)
data_process_68(mort1978)

