
#############Extract the data from 1989 to 1998############# 
mort1989<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1989.csv" )
mort1990<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1990.csv" )
mort1991<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1991.csv" )
mort1992<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1992.csv" )
mort1993<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1993.csv" )
mort1994<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1994.csv" )
mort1995<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1995.csv" )
mort1996<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1996.csv" )
mort1997<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1997.csv" )
mort1998<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1998.csv" )

new1989<-mort1989[c("datayear","restatus","stateoc",  "staters","educr", "monthdth","sex","race","ager12","placdth",
                    "marstat","hspanicr", "autopsy","ucod", 
                    "ranum", "record_1", "record_2", "record_3", "record_4", "record_5", "record_6", "record_7", 
                    "record_8", "record_9", "record_10", "record_11", "record_12", "record_13", "record_14", 
                    "record_15", "record_16", "record_17", "record_18", "record_19", "record_20" )]
column_89 <- colnames(new1989)
column_89

new1989<-mort1989[c("datayear","restatus","stateoc",  "staters","educr", "monthdth","sex","race","ager12","placdth",
                    "marstat","hspanicr", "autopsy","ucod", 
                    "ranum", "record_1", "record_2", "record_3", "record_4", "record_5", "record_6", "record_7", 
                    "record_8", "record_9", "record_10", "record_11", "record_12", "record_13", "record_14", 
                    "record_15", "record_16", "record_17", "record_18", "record_19", "record_20" )]

column_96 <- c("year", "restatus","stateoc",  "staters","educr", "monthdth","sex","race","ager12","placdth",
                "marstat","hspanicr", "autopsy","ucod", 
               "ranum", "record_1", "record_2", "record_3", "record_4", "record_5", "record_6", "record_7", 
               "record_8", "record_9", "record_10", "record_11", "record_12", "record_13", "record_14", 
                "record_15", "record_16", "record_17", "record_18", "record_19", "record_20")
column_96

data_process_89 <- function(x){
  y<- x[column_89]
  y_1 <- y %>%
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
  
  for (i in  c(14,16:35)){
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
  colnames(y_1)[36:56] <- new_names
  y_1 <- y_1[c(-14, -16:-35)]
  saveRDS(y_1, paste0("new_mort", y_1[1, 1]))
}  

data_process_89(mort1989)
data_process_89(mort1990)
data_process_89(mort1991)
data_process_89(mort1992)
data_process_89(mort1993)
data_process_89(mort1994)
data_process_89(mort1995)
data_process_89(mort1996)
data_process_89(mort1997)
data_process_89(mort1998)
data_process_89(mort1999)
aaa<-read_rds("new_mort89")