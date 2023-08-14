var_name_2006 <- colnames(mort2006[c(1, 3, 5,6, 11, 13, 14, 16, 17, 18, 20, 21, 22, 23, 89:109, 113)])
var_name_2006


mort2007 <- read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2007.csv")
mort2008 <- read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2008.csv")
mort2009 <- read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2009.csv")
mort2010 <- read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2010.csv")


################# mortality records between 2011~ 2019################


mort2011 <- read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2011.csv")
mort2012 <- read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2012.csv")
mort2013 <- read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2013.csv")
mort2014 <- read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2014.csv")
mort2015 <- read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2015.csv")
mort2016 <- read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2016.csv")
mort2017 <- read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2017.csv")
mort2018 <- read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2018.csv")
mort2019 <- read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort2019.csv")


colnames(mort2011)==colnames(mort2019)


data_process_06 <- function(x){
  y<- x[var_name_2006]
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
  colnames(y_1)[37:57] <- new_names

  y_1 <-y_1[c(-14, -16:-35)]
  y_1 <-y_1 %>%
    relocate(racer3, .before= ranum)
  saveRDS(y_1, paste0("new_mort", y_1[1, 8]))
}
# Export the data as RDS
# Smaller size and much faster than writing in csv. 
# More efficient in re-load and manipulate the data sets. 

data_process_06(mort2007)
data_process_06(mort2008)
data_process_06(mort2009)
data_process_06(mort2010)

data_process_06(mort2014)
data_process_06(mort2011)
data_process_06(mort2012)
data_process_06(mort2013)
data_process_06(mort2015)
data_process_06(mort2016)
data_process_06(mort2017)
data_process_06(mort2018)
data_process_06(mort2019)

aa<-readRDS("new_mort2019")
