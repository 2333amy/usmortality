##################Mapping ICD-9 code ##################

library(dplyr)
library(tidyverse)
nums<- c(paste0("00", 1:9), paste0("0", 10:99), 100:999)
nums

#### all small letters + underscore ####

# certain_infectious_diseases
certain_infectious_diseases<- sort(nums[1:139])
certain_infectious_diseases

tuberculosis <- sort(nums[10:18])
syphilis <- sort(nums[90:97])
infectious_gastro_enteritis <- sort(nums[8: 9])
dysentery <- sort(nums[c(4,6)])
meningococcal_infection <- nums[36]
septicemia<- sort(nums[38])
viral_hepatitis<- sort(nums[70])
hiv_aids<- sort(nums[42:44])
other_infectious_diseases <- sort(nums[c(1:3, 5:7, 20:35, 37, 39:41, 45:66, 71:88, 98:139)])


# malignant_neoplasm 
malignant_neoplasm <- sort(nums[140:208])
lip_oral_cavity_pharynx_neoplasm <- sort(nums[140:149])
esophagus_neoplasm <- nums[150]
stomach_neoplasm <- nums[151]
colon_neoplasm <- nums[153]
rectum_neoplasm <- nums[154]
liver_gallbladder_bile_ducts_neoplasm <- sort(nums[155:156])
pancreas_neoplasm <- nums[157]
larynx_neoplasm <- nums[161]
trachea_bronchus_lung_neoplasm <-nums[162]
skin_neoplasm <-sort(nums[172:173])
breast_neoplasm <-sort(nums[174:175])
cervix_uteri_neoplasm <-nums[180]
other_parts_of_uterus_neoplasm <-sort(nums[c(179, 182)])
ovary_neoplasm <-nums[183]
prostate_neoplasm <-nums[185]
kidney_neoplasm <-nums[189]
bladder_neoplasm <-nums[188]
hodgkin_lymphoma_neoplasm <- nums[201]
non_hodgkin_lymphoma_neoplasm <- sort(nums[c(200, 202)])
myeloma_neoplasm <- 
leukemia_neoplasm <-
other_malignant_neoplasms <- sort(nums[c(152,158:160, 163:171, 176, 181,184,
                                         186, 187, 190:199)])

other_neoplasms <- sort(nums[210:239])
other_neoplasms

blood_and_blood_forming_organs <- sort(nums[279:289])
blood_and_blood_forming_organs 

# endocrine_nutritional_metabolic 
endocrine_nutritional_metabolic <- sort(nums[240:278])
endocrine_nutritional_metabolic

diabetes_mellitus <- nums[250]
overweight_obesity_other_hyperalimentation <- nums[278]
other_endocrine_nutritional_metabolic_diseases <-sort(nums[c(240:246, 251:277)])

# mental_behavioral_disorders 
mental_behavioural_disorders <-sort(nums[290:319])
mental_behavioural_disorders

alcohol_abuse<- sort(nums[c(291, 303)])
drug_dependence_toxicomania <- sort(nums[304:305])
other_mental_behavioural_disorders  <-sort(nums[c(290, 292:302, 306:319)])

#nervous_systems_sense_organs 
nervous_systems_sense_organs <- sort(nums[320:389])
nervous_systems_sense_organs

meningitis<- sort(nums[320:322])
parkinsons_diseases <- nums[332]
alzheimer_disease <- nums[331]
multiple_sclerosis<- nums[340]
other_diseases_of_the_nervous_system_sense_organs <- sort(nums[c(323:330, 333:337, 341:389)])

# heart diseases 
heart_diseases <- sort(nums[390:429])
heart_diseases

chronic_rheumatic_heart_diseases <- sort(nums[393:398])
acute_rheumatic_heart_diseases <- sort(nums[390:392])
arteriosclerotic_ischaemic_degenerative <- sort(nums[410:414])
hypertensive_heart_disease <- sort(nums[401:405])
pulmonary_heart_disease_pulmonary_circulation <- sort(nums[415:417])
other_forms_of_heart_disease <- sort(nums[420:429])


# cerebrovascular diseases 
cerebrovascular <-sort(nums[430:438])
cerebrovascular

# unspecific disorders of the circulatory diseases 
unspecific_disorders_of_the_circulatory_system <- sort(nums[440:459])
unspecific_disorders_of_the_circulatory_system 

artherosclerosis <- nums[440]
aortic_aneurysm <- nums[441]
other_diseases_of_arteries_arterioles_capillaries <- sort(nums[442:449])
other_disorder_of_the_circulatorysystem <- sort(nums[451:459])


#respiratory diseases 
respiratory <- sort(nums[460:519])
respiratory 

influenza <- nums[487]
other_acute_respiratory_infections<- sort(nums[460:466])
pneumonia <- sort(nums[480:486])
chronic_bronchitis <- sort(nums[490:491])
asthma <-nums[493]
other_obstructive_pulmonary_diseases <- sort(nums[c(492, 494, 496)])
other_respiratory_diseases <- sort(nums[c(470:478, 488, 495, 500:519)])


# diseases_of_digestive_systems
digestive_systems <- sort(nums[520:579])
digestive_systems

gastric_duodenal_ulcer <- sort(nums[531:534])
gastro_enteritis <- sort(nums[c(535, 555, 556, 558, 562)])
chronic_liver_diseases_cirrhosis <- nums[571]
other_diseases_of_the_digestive_systems <- sort(nums[c(520:530, 536:553, 557, 
                                                       560, 561, 563:570, 572:579)])


# skin_subcutaneous_tissues 
skin_subcutaneous_tissues <- sort(nums[680:709])
skin_subcutaneous_tissues

infections_skin_subcutaneous_tissue <- sort(nums[680:686])
non_infectious_diseases_of_the_skin_subcutaneous_tissue <- sort(nums[690:709])


# musculoskeletal_connective_tissue
musculoskeletal_connective_tissue <- sort(nums[710:739])
musculoskeletal_connective_tissue

rheumatoid_arthritis_osteoarthrosis<- sort(nums[714:715])
other_diseases_of_the_musculoskeletal_connective_tissue<- sort(nums[c(710:713,
                                                                      716:739)])


# diseases of genitourinary system
genitourinary <- sort(nums[580:629])
genitourinary

nephritis_nephrosis_renal_failure<- sort(nums[580:586])
infections_of_kidney <- nums[590]
other_diseases_of_kidney_ureter<- sort(nums[c(587:589, 591:594)])
other_diseases_of_the_genitourinary_system <- sort(nums[595:629])


# complications_of_pregnacy_childbirth_puerperium
complications_of_pregnacy_childbirth_puerperium <-sort(nums[630:676])
complications_of_pregnacy_childbirth_puerperium 


# certain_conditions_originating_in_the_perinatal_period
certain_conditions_originating_in_the_perinatal_period<- sort(nums[760:779])
certain_conditions_originating_in_the_perinatal_period


# congenital_malformations
congenital_malformations <- sort(nums[740:759])
congenital_malformations 

congenital_malformations_of_the_nervous_system <- sort(nums[740:742])
congenital_malformations_of_the_circulatory_system<- sort(nums[745:747])
other_congenital_malformations_anomalies<- sort(nums[c(743, 744, 748:759)])


# ill_defined_or_unknown
ill_defined_or_unknown <- sort(nums[780:799])
ill_defined_or_unknown


#external_cause 
external_cause<- sort(unlist(list(outer(LETTERS[5], nums[800:999], paste0))))
external_cause

motor_vehicle_accidents <- external_cause[c(11:26)]
accidental_falls <- external_cause[81:89]
accidental_poisoning_by_alcohol<- external_cause[61]
other_accidental_poisoning<- external_cause[c(51:60, 62:70)]
other_accidents <- external_cause[c(1:8, 27:49, 71:80, 91:150)] 
suicide<- external_cause[151:160]
homicide <- external_cause[161:170]
events_of_undetermined_intent <- external_cause[181:190]
other_external_causes <- external_cause[c(171:180, 191:200)]


other_cause <- c(sort(unlist(list(outer(LETTERS[5], nums_0[1:31], paste0)))),
                 sort(unlist(list(outer(LETTERS[22], nums_0[2:92], paste0)))), 
                 sort(nums[800:999]))
other_cause[!other_cause %in% c("849", "855", "856", "857", "858", "859", "898", "899")]

#############Extract the data from 1979 to 1988############# 
mort1979<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1979.csv" )
mort1980<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1980.csv" )
mort1981<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1981.csv" )
mort1982<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1982.csv" )
mort1983<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1983.csv" )
mort1984<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1984.csv" )
mort1985<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1985.csv" )
mort1986<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1986.csv" )
mort1987<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1987.csv" )
mort1988<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1988.csv" )




# read the column names in 1979 and select the variables we are intersted 
colnames(mort1979)
new1979<-mort1979[c("datayear", "restatus", "stateoc" , "staters" , "monthdth", "sex",  "race", "ager12",
                    "hospstat" ,  "marstat",  "autopsy" , "ucod", 
                    "ranum", "record_1", "record_2", "record_3", "record_4", "record_5", "record_6", "record_7", 
                    "record_8", "record_9", "record_10", "record_11", "record_12", "record_13", "record_14", 
                    "record_15", "record_16", "record_17", "record_18", "record_19", "record_20" )]
column_79 <- colnames(new1979)
column_79



data_process_79 <- function(x){
  y<- x[column_79]
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
  
  for (i in  c(12,14:33)){
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
  colnames(y_1)[34:54] <- new_names
  
  y_1 <-y_1[c(-12, -14:-33)]
  saveRDS(y_1, paste0("new_mort", y_1[1, 1]))
}  





data_process_79(mort1979)
data_process_79(mort1980)
data_process_79(mort1981)
data_process_79(mort1982)
data_process_79(mort1983)
data_process_79(mort1984)
data_process_79(mort1985)
data_process_79(mort1986)
data_process_79(mort1987)
data_process_79(mort1988)

#### Between 1989 and 1992, mortality records updated two more variables as education records and Hispanic origins.
#### Therefore, we add two more columns in our data set as well. 

mort1989<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1989.csv" )
mort1990<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1990.csv" )
mort1991<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1991.csv" )
mort1992<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1992.csv" )
# Collect the variables 
colnames(mort1989)

column_89 <- colnames(mort1989[c("datayear", "restatus", "stateoc" , "staters" , "educr" ,  "monthdth", "sex",  "race", "ager12",
                                 "placdth"  ,  "marstat" , "hspanicr", "autopsy" , "ucod", 
                                 "ranum", "record_1", "record_2", "record_3", "record_4", "record_5", "record_6", "record_7", 
                                 "record_8", "record_9", "record_10", "record_11", "record_12", "record_13", "record_14", 
                                 "record_15", "record_16", "record_17", "record_18", "record_19", "record_20" )])
column_89

### similar function 

data_process_89 <- function(x){
  y<- x[column_89]
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
  colnames(y_1)[36:56] <- new_names
  
  y_1 <-y_1[c(-14, -16:-35)]
  saveRDS(y_1, paste0("new_mort", y_1[1, 1]))
}  
data_process_89(mort1989)
data_process_89(mort1990)
data_process_89(mort1991)
data_process_89(mort1992)

#### In 1993 and 1994, 'injury at work' was added as well. 

mort1993<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1993.csv" )
mort1994<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1994.csv" )
colnames(mort1993)

column_93 <- colnames(mort1993[c("datayear", "restatus", "stateoc" , "staters" , "educr" ,  "monthdth", "sex",  "race", "ager12",
                                 "placdth"  ,  "marstat" , "hspanicr", "injwork" , "autopsy" , "ucod", 
                                 "ranum", "record_1", "record_2", "record_3", "record_4", "record_5", "record_6", "record_7", 
                                 "record_8", "record_9", "record_10", "record_11", "record_12", "record_13", "record_14", 
                                 "record_15", "record_16", "record_17", "record_18", "record_19", "record_20" )])
column_93

### similar function 

data_process_93 <- function(x){
  y<- x[column_93]
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
  
  y_1 <-y_1[c(-15, -17:-36)]
  saveRDS(y_1, paste0("new_mort", y_1[1, 1]))
}  
data_process_93(mort1993)
data_process_93(mort1994)

### From 1995, the `autopsy`  is no longer collected by NCHS

mort1995<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1995.csv" )
colnames(mort1995)

column_95 <- colnames(mort1995[c("datayear", "restatus", "stateoc" , "staters" , "educr" ,  "monthdth", "sex",  "race", "ager12",
                                 "placdth"  ,  "marstat" , "hspanicr", "injwork" , "ucod", 
                                 "ranum", "record_1", "record_2", "record_3", "record_4", "record_5", "record_6", "record_7", 
                                 "record_8", "record_9", "record_10", "record_11", "record_12", "record_13", "record_14", 
                                 "record_15", "record_16", "record_17", "record_18", "record_19", "record_20" )])
column_95
new1995 <- mort1995[column_95] %>%
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
  
  for (i in  c(14,16:35)){
    diseases_name <- matrix(nrow=nrow(new1995),ncol=1)
    diseases_name[which(new1995[,i] %in% c(malignant_neoplasm)),1]="malignant neoplasm"
    diseases_name[which(new1995[,i] %in% c(blood_and_blood_forming_organs)),1]="blood and blood forming organs"
    diseases_name[which(new1995[,i] %in% c(cerebrovascular)),1]="cerebrovascular"
    diseases_name[which(new1995[,i] %in% c(certain_conditions_originating_in_the_perinatal_period)),1]="certain conditions originating in the perinatal period"
    diseases_name[which(new1995[,i] %in% c(certain_infectious_diseases)),1]="certain_infectious_diseases"
    diseases_name[which(new1995[,i] %in%  c(complications_of_pregnacy_childbirth_puerperium)),1]= "complications of pregnacy childbirth puerperium"
    diseases_name[which(new1995[,i] %in% c(congenital_malformations)),1]="congenital malformations"
    diseases_name[which(new1995[,i] %in% c(digestive_systems )),1]="digestive systems"
    diseases_name[which(new1995[,i] %in% c(endocrine_nutritional_metabolic)),1]="endocrine nutritional metabolic diseases"
    diseases_name[which(new1995[,i] %in% c(genitourinary)),1]="genitourinary"
    diseases_name[which(new1995[,i] %in% c(heart_diseases)),1]="heart diseases"
    diseases_name[which(new1995[,i] %in% c(ill_defined_or_unknown)),1]="ill defined or unknown diseases"
    diseases_name[which(new1995[,i] %in% c(mental_behavioural_disorders)),1]="mental behavioural disorders"
    diseases_name[which(new1995[,i] %in% c(musculoskeletal_connective_tissue)),1]="musculoskeleta _connective tissue"
    diseases_name[which(new1995[,i] %in% c(other_neoplasms)),1]="other neoplasms"
    diseases_name[which(new1995[,i] %in% c(respiratory)),1]="respiratory"
    diseases_name[which(new1995[,i] %in% c(skin_subcutaneous_tissues)),1]="skin subcutaneous tissues"
    diseases_name[which(new1995[,i] %in% c(unspecific_disorders_of_the_circulatory_system)),1]="unspecific disorders of the circulatory system"
    diseases_name[which(new1995[,i] %in% c(external_cause)),1]="external_cause"
    diseases_name[which(new1995[,i] %in% c(nervous_systems_sense_organs)),1]="nervous systems sense organs"
    diseases_name[which(new1995[,i] %in% c(other_cause)),1]="other_cause"
    new1995=cbind(new1995,diseases_name)
  } 
old_names<- rep("diseases_name", 21)
new_names<- c("ucod disease",paste0("disease_", seq(1, 20)))
  
# Change the columns name and removal all original ICD-10 codes
colnames(new1995)[36:56] <- new_names
  
new1995 <-new1995[c(-14, -16:-35)]
saveRDS(new1995, paste0("new_mort", new1995[1, 1]))


### From 1996, some factors has changed their name.


mort1996<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1996.csv" )
mort1997<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1997.csv" )
mort1998<-  read.csv("C:\\Users\\z5396150\\OneDrive - UNSW\\Documents\\mort1998.csv" )
colnames(mort1996)
column_96 <- colnames(mort1996[c("year", "restatus", "stateoc" , "staters" , "educr" ,  "monthdth", "sex",  "race", "ager12",
                                 "placdth"  ,  "marstat" , "hspanicr", "injwork" , "ucod", 
                                 "ranum", "record_1", "record_2", "record_3", "record_4", "record_5", "record_6", "record_7", 
                                 "record_8", "record_9", "record_10", "record_11", "record_12", "record_13", "record_14", 
                                 "record_15", "record_16", "record_17", "record_18", "record_19", "record_20" )])
column_96
data_process_96 <- function(x){
  y<- x[column_96]
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
  colnames(y_1)[36:56] <- new_names
  
  y_1 <-y_1[c(-14, -16:-35)]
  saveRDS(y_1, paste0("new_mort", y_1[1, 1]))
}  
data_process_96(mort1996)
data_process_96(mort1997)
data_process_96(mort1998)
