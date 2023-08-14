#### all small letters + underscore ####

nums<- c(paste0("0", 0:9), 10:99)

# certain_infectious_diseases
tuberculosis <- c(sort(unlist(list(outer(LETTERS[1],nums[16:20], paste0)))),"B90" )
syphilis <- sort(unlist(list(outer(LETTERS[1],nums[51:54], paste0))))
infectious_gastro_enteritis <- c("A04", "A08", "A09")
dysentery <- c("A03", "A06")
meningococcal_infection <- "A39"
septicemia<- c("A40", "A41")
viral_hepatitis<- sort(unlist(list(outer(LETTERS[2],nums[16:20], paste0))))
hiv_aids<- sort(unlist(list(outer(LETTERS[2],nums[21:25], paste0))))
other_infectious_diseases <- sort(c(paste0("A", nums[c(1:3, 6, 8, 21:39, 43:50, 55:100)]), 
                                    paste0("B", nums[c(1:10, 26:90, 92:100)])))


# malignant_neoplasm 
lip_oral_cavity_pharynx_neoplasm <- sort(unlist(list(outer(LETTERS[3],nums[1:15], paste0))))
esophagus_neoplasm <- "C15"
stomach_neoplasm <- "C16"
colon_neoplasm <- "C18"
rectum_neoplasm <- c("C19", "C20", "C21")
liver_gallbladder_bile_ducts_neoplasm <- c("C22", "C23", "C24")
pancreas_neoplasm <- "C25"
larynx_neoplasm <- "C32"
trachea_bronchus_lung_neoplasm <-c("C33", "C34" )
skin_neoplasm <-c("C43", "C44" )
breast_neoplasm <-"C50"
cervix_uteri_neoplasm <-"C53"
other_parts_of_uterus_neoplasm <-c("C54", "C55" )
ovary_neoplasm <-"C56"
prostate_neoplasm <-"C61"
kidney_neoplasm <-c("C64", "C65", "C66", "C68")
bladder_neoplasm <-"C67"
hodgkin_lymphoma_neoplasm <-"C81"
non_hodgkin_lymphoma_neoplasm <- c("C83","C84","C85")
myeloma_neoplasm <- "C90"
leukemia_neoplasm <- sort(paste0("C", nums[92:96]))
other_malignant_neoplasms <- sort(paste0("C", nums[c(18, 27:32, 38:42, 46:50, 52, 53, 58:61, 
                                                   63, 64, 70:81, 83, 87:89, 97, 98)]))


other_neoplasms <- sort(unlist(list(outer(LETTERS[4], nums[1:49], paste0))))


blood_and_blood_forming_organs <- sort(unlist(list(outer(LETTERS[4], nums[51:90], paste0))))


# endocrine_nutritional_metabolic 
diabetes_mellitus <- sort(paste0("E", nums[11:15]))
overweight_obesity_other_hyperalimentation <- sort(paste0("E", nums[66:69]))
other_endocrine_nutritional_metabolic_diseases <-sort(paste0("E", nums[c(1:8, 16:65, 71:91)]))

# mental_behavioral_disorders 
alcohol_abuse<- "F10"
drug_dependence_toxicomania <- sort(paste0("F", 11:19))
other_mental_behavioural_disorders  <-sort(paste0("F", nums[c(1:10, 21:100)]))

#nervous_systems_sense_organs 
meningitis<- sort(paste0("G", nums[1:4]))
parkinsons_diseases <- c("G20", "G21")
alzheimer_disease <- "G30"
multiple_sclerosis<- "G35"
other_diseases_of_the_nervous_system_sense_organs <- c(paste0("G", nums[c(5:14, 24:27, 32, 37:45, 47:100)]), 
                                                          paste0("H", nums[1:96]))

# heart diseases 
chronic_rheumatic_heart_diseases <- sort(paste0("I", nums[6:10]))
acute_rheumatic_heart_diseases <- sort(paste0("I", nums[1:3]))
arteriosclerotic_ischaemic_degenerative <- sort(paste0("I",nums[21:26]))
hypertensive_heart_disease <-  sort(paste0("I",nums[11:16]))
pulmonary_heart_disease_pulmonary_circulation <-  sort(paste0("I",nums[27:29]))
other_forms_of_heart_disease <-  sort(paste0("I",nums[31:53]))


# cerebrovascular diseases 
cerebrovascular <-c(sort(unlist(list(outer("I", nums[61:70], paste0)))), "G45")


# unspecific disorders of the circulatory diseases 
artherosclerosis <- "I70"
aortic_aneurysm <- "I71"
other_diseases_of_arteries_arterioles_capillaries <- sort(paste0("I", 72:78))
other_disorder_of_the_circulatorysystem <- sort(paste0("I", 80:99))


#respiratory diseases 
influenza <- sort(paste0("J", nums[10:12]))
other_acute_respiratory_infections<- sort(c(paste0("J", nums[c(1:7, 21:23)]), "U04"))
pneumonia <- sort(paste0("J", nums[13:19]))
chronic_bronchitis <- sort(paste0("J", nums[41:43]))
asthma <-sort(paste0("J", nums[46:47]))
other_obstructive_pulmonary_diseases <- c("J43", "J44", "J47")
other_respiratory_diseases <- sort(paste0("J", c(30:39, 60:98)))
# U04 = SARS, U07~U12 = COVID(related causes) are grouped into respiratory diseases
covid <- c("U04","U07", "U08", "U09", "U10", "U12" )

# diseases_of_digestive_systems
gastric_duodenal_ulcer <- sort(paste0("K", 25:28))
gastro_enteritis <- sort(paste0("K", c(29, 50:52, 57)))
chronic_liver_diseases_cirrhosis <- sort(paste0("K", c(70, 73, 74)))
other_diseases_of_the_digestive_systems <-  sort(paste0("K", nums[c(1:23, 31:47, 54:57, 59:68, 
                                                                    72, 73, 76:94)]))


# skin_subcutaneous_tissues 
infections_skin_subcutaneous_tissue <- sort(paste0("L", nums[1:9]))
non_infectious_diseases_of_the_skin_subcutaneous_tissue <- sort(paste0("L", nums[10:100]))


# musculoskeletal_connective_tissue
rheumatoid_arthritis_osteoarthrosis<- sort(paste0("M",nums[c(6, 7, 16:20)]))
other_diseases_of_the_musculoskeletal_connective_tissue<- sort(paste0("M", nums[c(1:4, 9:14, 21:100)]))


# diseases of genitourinary system
nephritis_nephrosis_renal_failure<- sort(paste0("N", nums[c(1:6, 18:20)]))
infections_of_kidney <- sort(paste0("N", nums[c(11:14, 16)]))
other_diseases_of_kidney_ureter<- sort(paste0("N", nums[c(7:9, 14,15, 21:30)]))
other_diseases_of_the_genitourinary_system <- sort(paste0("N", nums[c(31:100)]))


# complications_of_pregnacy_childbirth_puerperium
complications_of_pregnacy_childbirth_puerperium <-sort(unlist(list(outer("O", nums, paste0))))


# certain_conditions_originating_in_the_perinatal_period
certain_conditions_originating_in_the_perinatal_period<- sort(unlist(list(outer("P", nums, paste0))))


# congenital_malformations
congenital_malformations_of_the_nervous_system <- sort(paste0("Q", nums[c(1:8)]))
congenital_malformations_of_the_circulatory_system<- sort(paste0("Q", 20:28))
other_congenital_malformations_anomalies<- sort(paste0("Q", c(10:18, 30:99)))


# ill_defined_or_unknown
senility_without_psychosis <- "R54"
sudden_death <-c("R95", "R96")
unknown_unspecified_causes <- sort(paste0("R", 97:99))
other_ill_defined_unknown<- sort(paste0("R", nums[c(1:54, 56:95)]))


#external_cause 
external_cause<- sort(unlist(list(outer(LETTERS[22:25], nums, paste0))))
external_cause <- external_cause[-length(external_cause)]


###########################Loading dataset ###########################
mort1999<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1999.csv")
mort2000<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2000.csv")
mort2001<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2001.csv")
mort2002<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2002.csv")

#Select the variables from the original datasets 
#Please see reports reading of Reasons of choosing variables
#Since the variables share the same name in different data set, we uses same variables name to filter. 


colnames(mort1999)
column_99 <- colnames(mort1999[c("year","staters" , "educr" ,  "monthdth", "sex",  "race", "ager12",
                                 "placdth"  ,  "marstat" , "hspanicr", "mandeath", "ucod", 
                                 "ranum", "record_1", "record_2", "record_3", "record_4", "record_5", "record_6", "record_7", 
                                 "record_8", "record_9", "record_10", "record_11", "record_12", "record_13", "record_14", 
                                 "record_15", "record_16", "record_17", "record_18", "record_19", "record_20" )])

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
  for (i in  c(12,14:33)){
    diseases_name <- matrix(nrow=nrow(y_1),ncol=1)
    diseases_name[which(y_1[,i] %in% c(tuberculosis)),1]="Tuberculosis"
    diseases_name[which(y_1[,i] %in% c(syphilis)),1]="Syphilis"
    diseases_name[which(y_1[,i] %in% c(infectious_gastro_enteritis)),1]="Infectious Gastro-enteritis"
    diseases_name[which(y_1[,i] %in% c(dysentery)),1]="Dysentery"
    diseases_name[which(y_1[,i] %in% c(meningococcal_infection)),1]="Meningococcal infection"
    diseases_name[which(y_1[,i] %in%  c(septicemia)),1]= "Septicemia"
    diseases_name[which(y_1[,i] %in% c(viral_hepatitis)),1]="Viral hepatitis"
    diseases_name[which(y_1[,i] %in% c(hiv_aids)),1]="HIV AIDS"
    diseases_name[which(y_1[,i] %in% c(other_infectious_diseases)),1]="Other infectious diseases"
    # malignant_neoplasm 
    diseases_name[which(y_1[,i] %in% c(lip_oral_cavity_pharynx_neoplasm)),1]="Lip/oral cavity/pharynx neoplasm"
    diseases_name[which(y_1[,i] %in% c(esophagus_neoplasm)),1]="Esophagus neoplasm"
    diseases_name[which(y_1[,i] %in% c(stomach_neoplasm)),1]="Stomach neoplasm"
    diseases_name[which(y_1[,i] %in% c(colon_neoplasm)),1]="Colon neoplasm"
    diseases_name[which(y_1[,i] %in% c(rectum_neoplasm)),1]="Rectum neoplasm"
    diseases_name[which(y_1[,i] %in% c(liver_gallbladder_bile_ducts_neoplasm)),1]="Liver, gallbladder and bile ducts neoplasm"
    diseases_name[which(y_1[,i] %in% c(pancreas_neoplasm)),1]="Pancreas neoplasm"
    diseases_name[which(y_1[,i] %in% c(larynx_neoplasm)),1]="Larynx neoplasm"
    diseases_name[which(y_1[,i] %in% c(trachea_bronchus_lung_neoplasm)),1]="Trachea, bronchus, and lung neoplasm"
    diseases_name[which(y_1[,i] %in% c(skin_neoplasm)),1]="Skin neoplasm"
    diseases_name[which(y_1[,i] %in% c(breast_neoplasm)),1]="Breast neoplasm"
    diseases_name[which(y_1[,i] %in% c(cervix_uteri_neoplasm)),1]="Cervix uteri neoplasm"
    diseases_name[which(y_1[,i] %in% c(other_parts_of_uterus_neoplasm)),1]= "Other parts of uterus neoplasm"
    diseases_name[which(y_1[,i] %in% c(ovary_neoplasm)),1]="Ovary neoplasm"
    diseases_name[which(y_1[,i] %in% c(prostate_neoplasm)),1]="Prostate neoplasm"
    diseases_name[which(y_1[,i] %in% c(kidney_neoplasm)),1]="Kidney neoplasm"
    diseases_name[which(y_1[,i] %in% c(bladder_neoplasm)),1]="Bladder neoplasm"
    diseases_name[which(y_1[,i] %in% c(hodgkin_lymphoma_neoplasm)),1]="Hodgkin lymphoma"
    diseases_name[which(y_1[,i] %in% c(non_hodgkin_lymphoma_neoplasm)),1]="Non-Hodgkin lymphoma"
    diseases_name[which(y_1[,i] %in% c(myeloma_neoplasm)),1]="Myeloma"
    diseases_name[which(y_1[,i] %in% c(leukemia_neoplasm)),1]="Leukemia"
    diseases_name[which(y_1[,i] %in% c(other_malignant_neoplasms)),1]="Other malignant neoplasms"
    # other_neoplasms 
    diseases_name[which(y_1[,i] %in% c(other_neoplasms)),1]="Other neoplasms"
    # blood_and_blood_forming_organs
    diseases_name[which(y_1[,i] %in% c(blood_and_blood_forming_organs)),1]="Diseases of the blood and blood-forming organs"
    diseases_name[which(y_1[,i] %in% c(diabetes_mellitus)),1]="Diabetes Mellitus"
    diseases_name[which(y_1[,i] %in% c(overweight_obesity_other_hyperalimentation)),1]="Overweight, obesity, and other hyperalimentation"
    diseases_name[which(y_1[,i] %in% c(other_endocrine_nutritional_metabolic_diseases )),1]="Other endocrine, nutritional and metabolic diseases"
    diseases_name[which(y_1[,i] %in% c(alcohol_abuse)),1]="Alcohol abuse"
    diseases_name[which(y_1[,i] %in%  c(drug_dependence_toxicomania)),1]= "Drug dependence, toxicomania"
    diseases_name[which(y_1[,i] %in% c(other_mental_behavioural_disorders)),1]="Other mental and behavioural disorders"
    diseases_name[which(y_1[,i] %in% c(meningitis)),1]="Meningitis"
    diseases_name[which(y_1[,i] %in% c(parkinsons_diseases )),1]="Parkinson's disease"
    diseases_name[which(y_1[,i] %in% c(alzheimer_disease)),1]="Alzheimer's disease"
    diseases_name[which(y_1[,i] %in% c(multiple_sclerosis)),1]="Multiple sclerosis"
    diseases_name[which(y_1[,i] %in% c(other_diseases_of_the_nervous_system_sense_organs)),1]="Other diseases of the nervous system and the sense organs"
    # heart_diseases
    diseases_name[which(y_1[,i] %in% c(chronic_rheumatic_heart_diseases)),1]="Chronic rheumatic heart diseases"
    diseases_name[which(y_1[,i] %in% c(acute_rheumatic_heart_diseases)),1]="Acute rheumatic heart diseases"
    diseases_name[which(y_1[,i] %in% c(arteriosclerotic_ischaemic_degenerative)),1]="Arteriosclerotic/ischaemic and degenerative"
    diseases_name[which(y_1[,i] %in% c(hypertensive_heart_disease)),1]="Hypertensive heart disease"
    diseases_name[which(y_1[,i] %in% c(pulmonary_heart_disease_pulmonary_circulation)),1]="Pulmonary heart disease and disease of pulmonary circulation"
    diseases_name[which(y_1[,i] %in% c(other_forms_of_heart_disease)),1]="Other forms of heart disease"
    # Cerebrovascular disease
    diseases_name[which(y_1[,i] %in% c(cerebrovascular)),1]="Cerebrovascular disease"
    # Other and unspecified disorders of the circulatory system
    diseases_name[which(y_1[,i] %in% c(artherosclerosis)),1]="Artherosclerosis"
    diseases_name[which(y_1[,i] %in% c(aortic_aneurysm)),1]="Aortic aneurysm"
    diseases_name[which(y_1[,i] %in%  c(other_diseases_of_arteries_arterioles_capillaries)),1]= "Other diseases of arteries, arterioles and capillaries"
    diseases_name[which(y_1[,i] %in% c(other_disorder_of_the_circulatorysystem )),1]="Other disorder of the circulatory system"
    # Respiratory diseases
    diseases_name[which(y_1[,i] %in% c(influenza )),1]="Influenza"
    diseases_name[which(y_1[,i] %in% c(other_acute_respiratory_infections)),1]="Other acute respiratory infections"
    diseases_name[which(y_1[,i] %in% c(pneumonia )),1]="Pneumonia"
    diseases_name[which(y_1[,i] %in% c(chronic_bronchitis )),1]="Chronic bronchitis"
    diseases_name[which(y_1[,i] %in% c(asthma)),1]="Asthma"
    diseases_name[which(y_1[,i] %in% c(other_obstructive_pulmonary_diseases )),1]="Other obstructive pulmonary diseases"
    diseases_name[which(y_1[,i] %in% c(other_respiratory_diseases)),1]="Other respiratory diseases"
    # diseases_of_digestive_systems
    diseases_name[which(y_1[,i] %in% c(gastric_duodenal_ulcer)),1]="Gastric and duodenal ulcer"
    diseases_name[which(y_1[,i] %in% c(gastro_enteritis)),1]="Gastro-enteritis (non-infectious)"
    diseases_name[which(y_1[,i] %in% c(chronic_liver_diseases_cirrhosis)),1]="Chronic liver diseases and cirrhosis"
    diseases_name[which(y_1[,i] %in% c(other_diseases_of_the_digestive_systems)),1]="Other diseases of the digestive system"
    # skin_subcutaneous_tissues 
    diseases_name[which(y_1[,i] %in% c(infections_skin_subcutaneous_tissue)),1]="Infections of skin and subcutaneous tissue"
    diseases_name[which(y_1[,i] %in% c(non_infectious_diseases_of_the_skin_subcutaneous_tissue)),1]="Non-infectious diseases of the skin and subcutaneous tissue"
    # musculoskeletal_connective_tissue
    diseases_name[which(y_1[,i] %in% c(rheumatoid_arthritis_osteoarthrosis)),1]="Rheumatoid arthritis and osteoarthrosis"
    diseases_name[which(y_1[,i] %in%  c(other_diseases_of_the_musculoskeletal_connective_tissue)),1]= "Other diseases of the musculoskeletal system/connective tissue"
    # diseases of genitourinary system
    diseases_name[which(y_1[,i] %in% c(nephritis_nephrosis_renal_failure)),1]="Nephritis, nephrosis and renal failure"
    diseases_name[which(y_1[,i] %in% c(infections_of_kidney)),1]="Infections of kidney"
    diseases_name[which(y_1[,i] %in% c(other_diseases_of_kidney_ureter)),1]="Other diseases of kidney and ureter"
    diseases_name[which(y_1[,i] %in% c(other_diseases_of_the_genitourinary_system )),1]="Other diseases of the genitourinary system"
    # complications_of_pregnacy_childbirth_puerperium
    diseases_name[which(y_1[,i] %in% c(complications_of_pregnacy_childbirth_puerperium )),1]="Complications of pregnancy, childbirth and puerperium"
    # certain_conditions_originating_in_the_perinatal_period
    diseases_name[which(y_1[,i] %in% c(certain_conditions_originating_in_the_perinatal_period)),1]="Certain conditions originating in the perinatal period"
    # congenital_malformations
    diseases_name[which(y_1[,i] %in% c(congenital_malformations_of_the_nervous_system)),1]="Congenital malformations of the nervous system"
    diseases_name[which(y_1[,i] %in% c(congenital_malformations_of_the_circulatory_system)),1]="Congenital malformations of the circulatory system"
    diseases_name[which(y_1[,i] %in% c(other_congenital_malformations_anomalies)),1]="Other congenital malformations/anomalies"
    # ill_defined_or_unknown
    diseases_name[which(y_1[,i] %in% c(senility_without_psychosis)),1]="Senility without psychosis"
    diseases_name[which(y_1[,i] %in% c(sudden_death)),1]="Sudden death"
    diseases_name[which(y_1[,i] %in% c(unknown_unspecified_causes )),1]="Unknown and unspecified causes"
    diseases_name[which(y_1[,i] %in% c(other_ill_defined_unknown)),1]="Other ill-defined or unknown"
    #external_cause 
    diseases_name[which(y_1[,i] %in% c(motor_vehicle_accidents)),1]="Motor vehicle accidents"
    diseases_name[which(y_1[,i] %in% c(accidental_falls)),1]="Accidental falls"
    diseases_name[which(y_1[,i] %in% c(accidental_poisoning_by_alcohol)),1]="Accidental poisoning by alcohol"
    diseases_name[which(y_1[,i] %in% c(other_accidental_poisoning)),1]="Other accidental poisoning"
    diseases_name[which(y_1[,i] %in% c(other_accidents )),1]="Other accidents"
    diseases_name[which(y_1[,i] %in% c(suicide)),1]="Suicide"
    diseases_name[which(y_1[,i] %in% c(homicide)),1]="Homicide"
    diseases_name[which(y_1[,i] %in% c(events_of_undetermined_intent)),1]="Events of undetermined intent"
    diseases_name[which(y_1[,i] %in% c(other_external_causes)),1]="Other external causes"
    y_1=cbind(y_1,diseases_name)
  }
  
  old_names<- rep("diseases_name", 21)
  new_names<- c("ucod disease",paste0("disease_", seq(1, 20)))
  
  # Change the columns name and removal all original ICD-10 codes
  colnames(y_1)[34:54] <- new_names
  # Export the data as RDS
  # Smaller size and much faster than writing in csv. 
  # More efficient in re-load and manipulate the data sets. 
  y_1 <-y_1[c(-12, -14:-33)]
  
  y_2<-y_1 %>%
    mutate(staters =
             case_when(staters == 1 ~ 'Alabama', 
                       staters == 2 ~ 'Alaska' ,
                       staters ==3 ~ 'Arizona' ,
                       staters ==4 ~ 'Arkansas' ,
                       staters ==5 ~ 'California', 
                       staters == 6 ~ 'Colorado',
                       staters ==7 ~ 'Connecticut',
                       staters ==8 ~ 'Delaware',
                       staters ==9 ~ 'District of Columbia',
                       staters ==10 ~ 'Florida',
                       staters == 11 ~ 'Georgia',
                       staters == 12 ~ 'Hawaii',
                       staters ==13 ~ 'Idaho',
                       staters == 14 ~ 'Illinois',
                       staters ==15 ~ 'Indiana',
                       staters ==16 ~ 'Iowa' ,
                       staters ==17 ~ 'Kansas' , 
                       staters ==18 ~ 'Kentucky' ,
                       staters == 19 ~'Louisiana' ,
                       staters == 20 ~ 'Maine' ,
                       staters ==21 ~ 'Maryland' ,
                       staters == 22 ~ 'Massachusetts' ,
                       staters ==23 ~ 'Michigan ' ,
                       staters == 24 ~ 'Minnesota ' ,
                       staters == 25 ~ 'Mississippi' ,
                       staters ==  26 ~ 'Missouri' ,
                       staters ==    27 ~ 'Montana' ,
                       staters ==    28 ~ 'Nebraska' ,
                       staters ==     29 ~ 'Nevada' , 
                       staters ==30 ~ 'New Hampshire',
                       staters ==31 ~ 'New Jersey',
                       staters ==32 ~ 'New Mexico',
                       staters ==33 ~ 'New York',
                       staters ==34 ~ 'North Carolina',
                       staters ==35 ~ 'North Dakota',
                       staters ==36 ~ 'Ohio',
                       staters ==37 ~ 'Oklahoma',
                       staters ==38 ~ 'Oregon',
                       staters ==39 ~ 'Pennsylvania',
                       staters ==40 ~ 'Rhode Island',
                       staters ==41 ~ 'South Carolina',
                       staters == 42 ~ 'South Dakota',
                       staters ==43 ~ 'Tennessee',
                       staters ==44 ~ 'Texas',
                       staters ==45 ~ 'Utah',
                       staters ==46 ~ 'Vermont' ,
                       staters ==47 ~ 'Virginia' ,
                       staters ==48 ~ 'Washington' ,
                       staters ==49 ~ 'West Virginia',
                       staters ==50 ~ 'Wisconsin' ,
                       staters ==51 ~ 'Wyoming',
                       staters ==52 ~'Puerto Rico' ,
                       staters ==53 ~'Virgin Islands' ,
                       staters ==54 ~'Guam',
                       staters ==55 ~'Canada',
                       staters ==56 ~'Cuba',
                       staters ==57 ~'Mexico',
                       staters ==59 ~'Remainder of the world', 
                       staters == 60 ~'American Samoa', 
                       staters == 61 ~'Northern Marianas'
             ))%>%
    mutate(sex = case_when(
      sex == 1 ~ "Male", 
      sex == 2 ~ "Female"
    )) %>%
    mutate(marstat = case_when(
      marstat == 1 ~ "Never married", 
      marstat == 2 ~ "Married", 
      marstat == 3 ~ "Widowed", 
      marstat == 4 ~ "Divorced", 
      marstat == 8 ~ "Not on certificate", 
      marstat == 9 ~ "Not stated"
      
    )) %>%
    mutate(monthdth =  case_when(
      monthdth == 1 ~ "January",
      monthdth == 2 ~ "February",
      monthdth == 3 ~ "March",
      monthdth == 4 ~ "April",
      monthdth == 5 ~ "May",
      monthdth == 6 ~ "June",
      monthdth == 7 ~ "July",
      monthdth == 8 ~ "August",
      monthdth == 9 ~ "September",
      monthdth == 10 ~ "October",
      monthdth == 11 ~ "November",
      monthdth == 12 ~ "December"
      
    )) %>%
    
    mutate(race = case_when(
      race ==  1 ~ "White",
      race ==  2 ~ "Black",
      race ==  3 ~ "American Indian (includes Aleuts and Eskimos)",
      race ==  4 ~ "Chinese",
      race ==  5 ~ "Japanese",
      race ==  6 ~ "Hawaiian (includes Part-Hawaiian)",
      race ==  7 ~ "Filipino",
      race == 18 ~ "Asian Indian", 
      race == 28 ~ "Korean", 
      race == 38 ~ "Samoan", 
      race == 48 ~ "Vietnamese", 
      race == 58 ~ "Guamanian", 
      race == 68 ~ "Other Asian or Pacific Islander",
      race == 78 ~ "Combined other Asian or Pacific Islander"
      
    )) %>%
    mutate(ager12 = case_when(
      ager12 == 1 ~ "under 1 year", 
      ager12 == 2 ~ "1-4 years", 
      ager12 == 3 ~ "5-14 years", 
      ager12 == 4 ~ "15-24 years", 
      ager12 == 5 ~ "25-34 years", 
      ager12 == 6 ~ "35-44 years", 
      ager12 == 7 ~ "45-54 years", 
      ager12 == 8 ~ "55-64 years", 
      ager12 == 9 ~ "65-74 years", 
      ager12 == 10 ~ "75-84 years", 
      ager12 == 11 ~ "85 years and over", 
      ager12 == 12 ~ "Age not stated"
      
    )) %>%
    mutate(placdth= case_when(
      placdth== 1 ~ "Inpatient",
      placdth== 2~ "Outpatient or admitted to Emergency Room",
      placdth== 3~ "Dead on Arrival",
      placdth== 4 ~ "Patient status unknown",
      placdth== 5 ~ "Nursing home",
      placdth== 6 ~ "Residence",
      placdth== 7~ "Other",
      placdth== 9~ "Place of death unknown"
    )) %>%
    mutate(educr = case_when(
      educr == 1~ "0-8 years", 
      educr == 2~ "9-11 years", 
      educr == 3~ "12 years", 
      educr == 4~ "13-15 years", 
      educr == 5~ "16 years and more", 
      educr == 6~ "Not stated"
    ))%>%
    mutate(hspanicr = case_when(
      hspanicr == 1~ "Mexican", 
      hspanicr == 2~ "Puerto Rican", 
      hspanicr == 3~ "Cuban", 
      hspanicr == 4~ "Central or South American", 
      hspanicr == 5~ "Other or unknown Hispanic", 
      hspanicr == 6~ "Non-Hispanic white", 
      hspanicr == 7~ "Non-Hispanic black", 
      hspanicr == 8~ "Non-Hispanic other races",
      hspanicr == 9~ "Hispanic origin unknown", 
    )) %>%
    mutate_at(vars(mandeath), ~replace_na(., 0))%>%
    mutate(mandeath = case_when(
      mandeath ==1 ~ "Accident", 
      mandeath ==2 ~ "Suicide", 
      mandeath ==3 ~ "Homicide", 
      mandeath ==4 ~ "Pending investigation", 
      mandeath ==5 ~ "Could not determine", 
      mandeath ==6 ~ "Self-Inflicted", 
      mandeath ==7 ~ "Natural",
      mandeath ==0 ~  "Not specified" ))
  
  
  saveRDS(y_2, paste0("new_mort", y_2[1, 1]))
}  


data_process_99(mort1999)
data_process_99(mort2000)
data_process_99(mort2001)
data_process_99(mort2002)

mortality_1999<- readRDS("/Users/zhengyangdong/new_mort1999")

###############################################################################
###############################################################################
###############################################################################

mort2003<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2003.csv")
mort2004<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2004.csv")

colnames(mort2003)
column_03 <- colnames(mort2003[c("year", "staters" ,"educ89","educ", "educflag","monthdth", "sex",  "race", "ager12",
                                 "placdth"  ,  "marstat" , "hspanicr", "mandeath", "ucod", 
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
  for (i in  c(15,17:36)){
    diseases_name <- matrix(nrow=nrow(y_1),ncol=1)
    diseases_name[which(y_1[,i] %in% c(tuberculosis)),1]="Tuberculosis"
    diseases_name[which(y_1[,i] %in% c(syphilis)),1]="Syphilis"
    diseases_name[which(y_1[,i] %in% c(infectious_gastro_enteritis)),1]="Infectious Gastro-enteritis"
    diseases_name[which(y_1[,i] %in% c(dysentery)),1]="Dysentery"
    diseases_name[which(y_1[,i] %in% c(meningococcal_infection)),1]="Meningococcal infection"
    diseases_name[which(y_1[,i] %in%  c(septicemia)),1]= "Septicemia"
    diseases_name[which(y_1[,i] %in% c(viral_hepatitis)),1]="Viral hepatitis"
    diseases_name[which(y_1[,i] %in% c(hiv_aids)),1]="HIV AIDS"
    diseases_name[which(y_1[,i] %in% c(other_infectious_diseases)),1]="Other infectious diseases"
    # malignant_neoplasm 
    diseases_name[which(y_1[,i] %in% c(lip_oral_cavity_pharynx_neoplasm)),1]="Lip/oral cavity/pharynx neoplasm"
    diseases_name[which(y_1[,i] %in% c(esophagus_neoplasm)),1]="Esophagus neoplasm"
    diseases_name[which(y_1[,i] %in% c(stomach_neoplasm)),1]="Stomach neoplasm"
    diseases_name[which(y_1[,i] %in% c(colon_neoplasm)),1]="Colon neoplasm"
    diseases_name[which(y_1[,i] %in% c(rectum_neoplasm)),1]="Rectum neoplasm"
    diseases_name[which(y_1[,i] %in% c(liver_gallbladder_bile_ducts_neoplasm)),1]="Liver, gallbladder and bile ducts neoplasm"
    diseases_name[which(y_1[,i] %in% c(pancreas_neoplasm)),1]="Pancreas neoplasm"
    diseases_name[which(y_1[,i] %in% c(larynx_neoplasm)),1]="Larynx neoplasm"
    diseases_name[which(y_1[,i] %in% c(trachea_bronchus_lung_neoplasm)),1]="Trachea, bronchus, and lung neoplasm"
    diseases_name[which(y_1[,i] %in% c(skin_neoplasm)),1]="Skin neoplasm"
    diseases_name[which(y_1[,i] %in% c(breast_neoplasm)),1]="Breast neoplasm"
    diseases_name[which(y_1[,i] %in% c(cervix_uteri_neoplasm)),1]="Cervix uteri neoplasm"
    diseases_name[which(y_1[,i] %in% c(other_parts_of_uterus_neoplasm)),1]= "Other parts of uterus neoplasm"
    diseases_name[which(y_1[,i] %in% c(ovary_neoplasm)),1]="Ovary neoplasm"
    diseases_name[which(y_1[,i] %in% c(prostate_neoplasm)),1]="Prostate neoplasm"
    diseases_name[which(y_1[,i] %in% c(kidney_neoplasm)),1]="Kidney neoplasm"
    diseases_name[which(y_1[,i] %in% c(bladder_neoplasm)),1]="Bladder neoplasm"
    diseases_name[which(y_1[,i] %in% c(hodgkin_lymphoma_neoplasm)),1]="Hodgkin lymphoma"
    diseases_name[which(y_1[,i] %in% c(non_hodgkin_lymphoma_neoplasm)),1]="Non-Hodgkin lymphoma"
    diseases_name[which(y_1[,i] %in% c(myeloma_neoplasm)),1]="Myeloma"
    diseases_name[which(y_1[,i] %in% c(leukemia_neoplasm)),1]="Leukemia"
    diseases_name[which(y_1[,i] %in% c(other_malignant_neoplasms)),1]="Other malignant neoplasms"
    # other_neoplasms 
    diseases_name[which(y_1[,i] %in% c(other_neoplasms)),1]="Other neoplasms"
    # blood_and_blood_forming_organs
    diseases_name[which(y_1[,i] %in% c(blood_and_blood_forming_organs)),1]="Diseases of the blood and blood-forming organs"
    diseases_name[which(y_1[,i] %in% c(diabetes_mellitus)),1]="Diabetes Mellitus"
    diseases_name[which(y_1[,i] %in% c(overweight_obesity_other_hyperalimentation)),1]="Overweight, obesity, and other hyperalimentation"
    diseases_name[which(y_1[,i] %in% c(other_endocrine_nutritional_metabolic_diseases )),1]="Other endocrine, nutritional and metabolic diseases"
    diseases_name[which(y_1[,i] %in% c(alcohol_abuse)),1]="Alcohol abuse"
    diseases_name[which(y_1[,i] %in%  c(drug_dependence_toxicomania)),1]= "Drug dependence, toxicomania"
    diseases_name[which(y_1[,i] %in% c(other_mental_behavioural_disorders)),1]="Other mental and behavioural disorders"
    diseases_name[which(y_1[,i] %in% c(meningitis)),1]="Meningitis"
    diseases_name[which(y_1[,i] %in% c(parkinsons_diseases )),1]="Parkinson's disease"
    diseases_name[which(y_1[,i] %in% c(alzheimer_disease)),1]="Alzheimer's disease"
    diseases_name[which(y_1[,i] %in% c(multiple_sclerosis)),1]="Multiple sclerosis"
    diseases_name[which(y_1[,i] %in% c(other_diseases_of_the_nervous_system_sense_organs)),1]="Other diseases of the nervous system and the sense organs"
    # heart_diseases
    diseases_name[which(y_1[,i] %in% c(chronic_rheumatic_heart_diseases)),1]="Chronic rheumatic heart diseases"
    diseases_name[which(y_1[,i] %in% c(acute_rheumatic_heart_diseases)),1]="Acute rheumatic heart diseases"
    diseases_name[which(y_1[,i] %in% c(arteriosclerotic_ischaemic_degenerative)),1]="Arteriosclerotic/ischaemic and degenerative"
    diseases_name[which(y_1[,i] %in% c(hypertensive_heart_disease)),1]="Hypertensive heart disease"
    diseases_name[which(y_1[,i] %in% c(pulmonary_heart_disease_pulmonary_circulation)),1]="Pulmonary heart disease and disease of pulmonary circulation"
    diseases_name[which(y_1[,i] %in% c(other_forms_of_heart_disease)),1]="Other forms of heart disease"
    # Cerebrovascular disease
    diseases_name[which(y_1[,i] %in% c(cerebrovascular)),1]="Cerebrovascular disease"
    # Other and unspecified disorders of the circulatory system
    diseases_name[which(y_1[,i] %in% c(artherosclerosis)),1]="Artherosclerosis"
    diseases_name[which(y_1[,i] %in% c(aortic_aneurysm)),1]="Aortic aneurysm"
    diseases_name[which(y_1[,i] %in%  c(other_diseases_of_arteries_arterioles_capillaries)),1]= "Other diseases of arteries, arterioles and capillaries"
    diseases_name[which(y_1[,i] %in% c(other_disorder_of_the_circulatorysystem )),1]="Other disorder of the circulatory system"
    # Respiratory diseases
    diseases_name[which(y_1[,i] %in% c(influenza )),1]="Influenza"
    diseases_name[which(y_1[,i] %in% c(other_acute_respiratory_infections)),1]="Other acute respiratory infections"
    diseases_name[which(y_1[,i] %in% c(pneumonia )),1]="Pneumonia"
    diseases_name[which(y_1[,i] %in% c(chronic_bronchitis )),1]="Chronic bronchitis"
    diseases_name[which(y_1[,i] %in% c(asthma)),1]="Asthma"
    diseases_name[which(y_1[,i] %in% c(other_obstructive_pulmonary_diseases )),1]="Other obstructive pulmonary diseases"
    diseases_name[which(y_1[,i] %in% c(other_respiratory_diseases)),1]="Other respiratory diseases"
    # diseases_of_digestive_systems
    diseases_name[which(y_1[,i] %in% c(gastric_duodenal_ulcer)),1]="Gastric and duodenal ulcer"
    diseases_name[which(y_1[,i] %in% c(gastro_enteritis)),1]="Gastro-enteritis (non-infectious)"
    diseases_name[which(y_1[,i] %in% c(chronic_liver_diseases_cirrhosis)),1]="Chronic liver diseases and cirrhosis"
    diseases_name[which(y_1[,i] %in% c(other_diseases_of_the_digestive_systems)),1]="Other diseases of the digestive system"
    # skin_subcutaneous_tissues 
    diseases_name[which(y_1[,i] %in% c(infections_skin_subcutaneous_tissue)),1]="Infections of skin and subcutaneous tissue"
    diseases_name[which(y_1[,i] %in% c(non_infectious_diseases_of_the_skin_subcutaneous_tissue)),1]="Non-infectious diseases of the skin and subcutaneous tissue"
    # musculoskeletal_connective_tissue
    diseases_name[which(y_1[,i] %in% c(rheumatoid_arthritis_osteoarthrosis)),1]="Rheumatoid arthritis and osteoarthrosis"
    diseases_name[which(y_1[,i] %in%  c(other_diseases_of_the_musculoskeletal_connective_tissue)),1]= "Other diseases of the musculoskeletal system/connective tissue"
    # diseases of genitourinary system
    diseases_name[which(y_1[,i] %in% c(nephritis_nephrosis_renal_failure)),1]="Nephritis, nephrosis and renal failure"
    diseases_name[which(y_1[,i] %in% c(infections_of_kidney)),1]="Infections of kidney"
    diseases_name[which(y_1[,i] %in% c(other_diseases_of_kidney_ureter)),1]="Other diseases of kidney and ureter"
    diseases_name[which(y_1[,i] %in% c(other_diseases_of_the_genitourinary_system )),1]="Other diseases of the genitourinary system"
    # complications_of_pregnacy_childbirth_puerperium
    diseases_name[which(y_1[,i] %in% c(complications_of_pregnacy_childbirth_puerperium )),1]="Complications of pregnancy, childbirth and puerperium"
    # certain_conditions_originating_in_the_perinatal_period
    diseases_name[which(y_1[,i] %in% c(certain_conditions_originating_in_the_perinatal_period)),1]="Certain conditions originating in the perinatal period"
    # congenital_malformations
    diseases_name[which(y_1[,i] %in% c(congenital_malformations_of_the_nervous_system)),1]="Congenital malformations of the nervous system"
    diseases_name[which(y_1[,i] %in% c(congenital_malformations_of_the_circulatory_system)),1]="Congenital malformations of the circulatory system"
    diseases_name[which(y_1[,i] %in% c(other_congenital_malformations_anomalies)),1]="Other congenital malformations/anomalies"
    # ill_defined_or_unknown
    diseases_name[which(y_1[,i] %in% c(senility_without_psychosis)),1]="Senility without psychosis"
    diseases_name[which(y_1[,i] %in% c(sudden_death)),1]="Sudden death"
    diseases_name[which(y_1[,i] %in% c(unknown_unspecified_causes )),1]="Unknown and unspecified causes"
    diseases_name[which(y_1[,i] %in% c(other_ill_defined_unknown)),1]="Other ill-defined or unknown"
    #external_cause 
    diseases_name[which(y_1[,i] %in% c(motor_vehicle_accidents)),1]="Motor vehicle accidents"
    diseases_name[which(y_1[,i] %in% c(accidental_falls)),1]="Accidental falls"
    diseases_name[which(y_1[,i] %in% c(accidental_poisoning_by_alcohol)),1]="Accidental poisoning by alcohol"
    diseases_name[which(y_1[,i] %in% c(other_accidental_poisoning)),1]="Other accidental poisoning"
    diseases_name[which(y_1[,i] %in% c(other_accidents )),1]="Other accidents"
    diseases_name[which(y_1[,i] %in% c(suicide)),1]="Suicide"
    diseases_name[which(y_1[,i] %in% c(homicide)),1]="Homicide"
    diseases_name[which(y_1[,i] %in% c(events_of_undetermined_intent)),1]="Events of undetermined intent"
    diseases_name[which(y_1[,i] %in% c(other_external_causes)),1]="Other external causes"
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

  y_2<-y_1 %>%
    mutate(staters= case_when(
      staters == 'AL' ~ 'Alabama', 
      staters == 'AK' ~ 'Alaska' ,
      staters =='AZ' ~ 'Arizona' ,
      staters =='AR' ~ 'Arkansas' ,
      staters =='CA' ~ 'California', 
      staters == 'CO' ~ 'Colorado',
      staters =='CT' ~ 'Connecticut',
      staters =='DE' ~ 'Delaware',
      staters =='DC' ~ 'District of Columbia',
      staters =='FL' ~ 'Florida',
      staters == 'GA' ~ 'Georgia',
      staters == 'HI' ~ 'Hawaii',
      staters =='ID' ~ 'Idaho',
      staters == 'IL' ~ 'Illinois',
      staters == 'IN' ~ 'Indiana',
      staters == 'IA' ~ 'Iowa',
      staters =='KS' ~ 'Kansas',
      staters == 'KY' ~ 'Kentucky',
      staters == 'LA' ~'Louisiana',
      staters == 'ME' ~ 'Maine',
      staters == 'MD' ~ 'Maryland',
      staters == 'MA' ~ 'Massachusetts',
      staters =='MI' ~ 'Michigan',
      staters == 'MN' ~ 'Minnesota' ,
      staters == 'MS' ~ 'Mississippi' ,
      staters ==  'MO' ~ 'Missouri' ,
      staters ==  'MT' ~ 'Montana'  ,
      staters ==   'NE' ~ 'Nebraska' ,
      staters ==    'NV' ~ 'Nevada' ,
      staters ==  'NH' ~ 'New Hampshire',
      staters == 'NJ' ~ 'New Jersey',
      staters == 'NM ' ~ 'New Mexico',
      staters =='NY' ~ 'New York',
      staters =='YC' ~ 'New York City',
      staters == 'NC' ~ 'North Carolina',
      staters =='ND' ~ 'North Dakota',
      staters =='OH' ~ 'Ohio',
      staters == 'OK' ~ 'Oklahoma',
      staters == 'OR' ~ 'Oregon',
      staters == 'PA' ~ 'Pennsylvania',
      staters == 'RI' ~ 'Rhode Island',
      staters == 'SC' ~ 'South Carolina',
      staters == 'SD' ~ 'South Dakota',
      staters == 'TN' ~ 'Tennessee',
      staters == 'TX' ~ 'Texas',
      staters == 'UT' ~ 'Utah'     ,
      staters =='VT' ~ 'Vermont'    ,
      staters =='VA' ~ 'Virginia'   ,
      staters =='WA' ~ 'Washington'  ,
      staters == 'WV' ~ 'West Virginia' ,
      staters =='WI' ~ 'Wisconsin'  ,
      staters == 'MY' ~ 'Wyoming'   ,
      staters == 'PR' ~'Puerto Rico'  ,
      staters == 'VI' ~'Virgin Islands'  ,
      staters =='GU' ~'Guam',
      staters =='AS' ~'American Samoa',
      staters == 'MP' ~'Northern Marianas', 
      staters == 'CC' ~'Canada', 
      staters == 'MX' ~'Mexico', 
      staters == 'CU' ~'Cuba', 
      staters == 'YY' ~'Remainder of the world'
      
    )) %>%
    mutate(sex = case_when(
      sex == "M" ~ "Male", 
      sex == "F" ~ "Female"
    )) %>%
    mutate(marstat = case_when(
      marstat == "S" ~ "Never married", 
      marstat == "M" ~ "Married", 
      marstat == "W" ~ "Widowed", 
      marstat == "D" ~ "Divorced", 
      marstat == "N" ~ "Not on certificate", 
      marstat == "U" ~ "Not stated"
      
    )) %>%
    mutate(monthdth =  case_when(
      monthdth == 1 ~ "January",
      monthdth == 2 ~ "February",
      monthdth == 3 ~ "March",
      monthdth == 4 ~ "April",
      monthdth == 5 ~ "May",
      monthdth == 6 ~ "June",
      monthdth == 7 ~ "July",
      monthdth == 8 ~ "August",
      monthdth == 9 ~ "September",
      monthdth == 10 ~ "October",
      monthdth == 11 ~ "November",
      monthdth == 12 ~ "December"
      
    )) %>%
    
    mutate(race = case_when(
      race ==  1 ~ "White",
      race ==  2 ~ "Black",
      race ==  3 ~ "American Indian (includes Aleuts and Eskimos)",
      race ==  4 ~ "Chinese",
      race ==  5 ~ "Japanese",
      race ==  6 ~ "Hawaiian (includes Part-Hawaiian)",
      race ==  7 ~ "Filipino",
      race == 18 ~ "Asian Indian", 
      race == 28 ~ "Korean", 
      race == 38 ~ "Samoan", 
      race == 48 ~ "Vietnamese", 
      race == 58 ~ "Guamanian", 
      race == 68 ~ "Other Asian or Pacific Islander",
      race == 78 ~ "Combined other Asian or Pacific Islander"
      
    )) %>%
    mutate(ager12 = case_when(
      ager12 == 1 ~ "under 1 year", 
      ager12 == 2 ~ "1-4 years", 
      ager12 == 3 ~ "5-14 years", 
      ager12 == 4 ~ "15-24 years", 
      ager12 == 5 ~ "25-34 years", 
      ager12 == 6 ~ "35-44 years", 
      ager12 == 7 ~ "45-54 years", 
      ager12 == 8 ~ "55-64 years", 
      ager12 == 9 ~ "65-74 years", 
      ager12 == 10 ~ "75-84 years", 
      ager12 == 11 ~ "85 years and over", 
      ager12 == 12 ~ "Age not stated"
      
    )) %>%
    mutate(placdth= case_when(
      placdth== 1 ~ "Inpatient",
      placdth== 2~ "Outpatient or admitted to Emergency Room",
      placdth== 3~ "Dead on Arrival",
      placdth== 4 ~ "Patient status unknown",
      placdth== 5 ~ "Nursing home",
      placdth== 6 ~ "Residence",
      placdth== 7~ "Other",
      placdth== 9~ "Place of death unknown"
    )) %>%
    mutate(hspanicr = case_when(
      hspanicr == 1~ "Mexican", 
      hspanicr == 2~ "Puerto Rican", 
      hspanicr == 3~ "Cuban", 
      hspanicr == 4~ "Central or South American", 
      hspanicr == 5~ "Other or unknown Hispanic", 
      hspanicr == 6~ "Non-Hispanic white", 
      hspanicr == 7~ "Non-Hispanic black", 
      hspanicr == 8~ "Non-Hispanic other races",
      hspanicr == 9~ "Hispanic origin unknown", 
    )) %>%
    mutate_at(vars(mandeath), ~replace_na(., 0))%>%
    mutate(mandeath = case_when(
      mandeath ==1 ~ "Accident", 
      mandeath ==2 ~ "Suicide", 
      mandeath ==3 ~ "Homicide", 
      mandeath ==4 ~ "Pending investigation", 
      mandeath ==5 ~ "Could not determine", 
      mandeath ==6 ~ "Self-Inflicted", 
      mandeath ==7 ~ "Natural",
      mandeath ==0 ~  "Not specified" ))  %>%
    mutate(educr = 
             case_when(
               educ89 == "0" & educflag == "0" ~ "0-8 years",
               educ89 == "1" & educflag == "0" ~ "0-8 years",
               educ89 == "2" & educflag == "0" ~ "0-8 years",
               educ89 == "3" & educflag == "0" ~ "0-8 years",
               educ89 == "4" & educflag == "0" ~ "0-8 years",
               educ89 == "5" & educflag == "0" ~ "0-8 years",
               educ89 == "6" & educflag == "0" ~ "0-8 years",
               educ89 == "7" & educflag == "0" ~ "0-8 years",
               educ89 == "8" & educflag == "0" ~ "0-8 years",
               educ89 == "9"  & educflag == "0"~ "9-11 years", 
               educ89 == "10"  & educflag == "0"~ "9-11 years", 
               educ89 == "11"  & educflag == "0"~ "9-11 years", 
               educ89 == "12" & educflag == "0" ~ "12 years", 
               educ89 == "13" & educflag == "0" ~ "13-15 years",
               educ89 == "14" & educflag == "0" ~ "13-15 years",
               educ89 == "15" & educflag == "0" ~ "13-15 years",
               educ89 == "16" & educflag == "0" ~ "16 years and more", 
               educ89 == "17" & educflag == "0" ~ "16 years and more", 
               educ89 =="99" & educflag == "0" ~"Not stated", 
               educ == "1" & educflag == "1" ~ "0-8 years",
               educ == "2" & educflag == "1" ~ "9-11 years",
               educ == "3" & educflag == "1" ~ "12 years",
               educ == "4" & educflag == "1" ~ "13-15 years",
               educ == "5" & educflag == "1" ~ "13-15 years",
               educ == "6" & educflag == "1" ~ "16 years and more",
               educ == "7" & educflag == "1" ~ "16 years and more",
               educ == "8" & educflag == "1" ~ "16 years and more",
               educ == "9" & educflag == "1" ~ "Not Stated",
               educflag == "2" ~ "Not Stated")) %>%
             select(-educ89, -educ, -educflag)
               
               
               
              
  saveRDS(y_2, paste0("new_mort", y_2[1, 1]))
  }  


data_process_03(mort2003)
data_process_03(mort2004)

# State of occurrence and state of residence were not allowed to disclose after 2005#

###############################################################################
###############################################################################
###############################################################################

mort2005<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2005.csv")
mort2006<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2006.csv")
mort2007<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2007.csv")
mort2008<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2008.csv" )
mort2009<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2009.csv" )
mort2010<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2010.csv" )
mort2011<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2011.csv" )
mort2012<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2012.csv" )
mort2013<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2013.csv" )
mort2014<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2014.csv")
mort2015<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2015.csv")
mort2016<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2016.csv" )
mort2017<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2017.csv")
mort2018<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2018.csv")
mort2019<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2019.csv" )
mort2020<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort2020.csv" )

column_05 <- colnames(mort2005[c("year", "educ1989","educ2003", "educflag",  "monthdth", "sex",  "race", "ager12",
                                 "placdth", "marstat" , "hspanicr", "mandeath","ucod", 
                                 "ranum", "record_1", "record_2", "record_3", "record_4", "record_5", "record_6", "record_7", 
                                 "record_8", "record_9", "record_10", "record_11", "record_12", "record_13", "record_14", 
                                 "record_15", "record_16", "record_17", "record_18", "record_19", "record_20")])


data_process_05<- function(x){
    y<- x[column_05]
    # Since the mortality code only contains one letter and 2 digits, 
    # we are using 'substr()'to keep the first 3 strings. 
    y_1 <-  y%>%
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
    for (i in  c(13,15:34)){
      diseases_name <- matrix(nrow=nrow(y_1),ncol=1)
      diseases_name[which(y_1[,i] %in% c(tuberculosis)),1]="Tuberculosis"
      diseases_name[which(y_1[,i] %in% c(syphilis)),1]="Syphilis"
      diseases_name[which(y_1[,i] %in% c(infectious_gastro_enteritis)),1]="Infectious Gastro-enteritis"
      diseases_name[which(y_1[,i] %in% c(dysentery)),1]="Dysentery"
      diseases_name[which(y_1[,i] %in% c(meningococcal_infection)),1]="Meningococcal infection"
      diseases_name[which(y_1[,i] %in%  c(septicemia)),1]= "Septicemia"
      diseases_name[which(y_1[,i] %in% c(viral_hepatitis)),1]="Viral hepatitis"
      diseases_name[which(y_1[,i] %in% c(hiv_aids)),1]="HIV AIDS"
      diseases_name[which(y_1[,i] %in% c(other_infectious_diseases)),1]="Other infectious diseases"
      # malignant_neoplasm 
      diseases_name[which(y_1[,i] %in% c(lip_oral_cavity_pharynx_neoplasm)),1]="Lip/oral cavity/pharynx neoplasm"
      diseases_name[which(y_1[,i] %in% c(esophagus_neoplasm)),1]="Esophagus neoplasm"
      diseases_name[which(y_1[,i] %in% c(stomach_neoplasm)),1]="Stomach neoplasm"
      diseases_name[which(y_1[,i] %in% c(colon_neoplasm)),1]="Colon neoplasm"
      diseases_name[which(y_1[,i] %in% c(rectum_neoplasm)),1]="Rectum neoplasm"
      diseases_name[which(y_1[,i] %in% c(liver_gallbladder_bile_ducts_neoplasm)),1]="Liver, gallbladder and bile ducts neoplasm"
      diseases_name[which(y_1[,i] %in% c(pancreas_neoplasm)),1]="Pancreas neoplasm"
      diseases_name[which(y_1[,i] %in% c(larynx_neoplasm)),1]="Larynx neoplasm"
      diseases_name[which(y_1[,i] %in% c(trachea_bronchus_lung_neoplasm)),1]="Trachea, bronchus, and lung neoplasm"
      diseases_name[which(y_1[,i] %in% c(skin_neoplasm)),1]="Skin neoplasm"
      diseases_name[which(y_1[,i] %in% c(breast_neoplasm)),1]="Breast neoplasm"
      diseases_name[which(y_1[,i] %in% c(cervix_uteri_neoplasm)),1]="Cervix uteri neoplasm"
      diseases_name[which(y_1[,i] %in% c(other_parts_of_uterus_neoplasm)),1]= "Other parts of uterus neoplasm"
      diseases_name[which(y_1[,i] %in% c(ovary_neoplasm)),1]="Ovary neoplasm"
      diseases_name[which(y_1[,i] %in% c(prostate_neoplasm)),1]="Prostate neoplasm"
      diseases_name[which(y_1[,i] %in% c(kidney_neoplasm)),1]="Kidney neoplasm"
      diseases_name[which(y_1[,i] %in% c(bladder_neoplasm)),1]="Bladder neoplasm"
      diseases_name[which(y_1[,i] %in% c(hodgkin_lymphoma_neoplasm)),1]="Hodgkin lymphoma"
      diseases_name[which(y_1[,i] %in% c(non_hodgkin_lymphoma_neoplasm)),1]="Non-Hodgkin lymphoma"
      diseases_name[which(y_1[,i] %in% c(myeloma_neoplasm)),1]="Myeloma"
      diseases_name[which(y_1[,i] %in% c(leukemia_neoplasm)),1]="Leukemia"
      diseases_name[which(y_1[,i] %in% c(other_malignant_neoplasms)),1]="Other malignant neoplasms"
      # other_neoplasms 
      diseases_name[which(y_1[,i] %in% c(other_neoplasms)),1]="Other neoplasms"
      # blood_and_blood_forming_organs
      diseases_name[which(y_1[,i] %in% c(blood_and_blood_forming_organs)),1]="Diseases of the blood and blood-forming organs"
      diseases_name[which(y_1[,i] %in% c(diabetes_mellitus)),1]="Diabetes Mellitus"
      diseases_name[which(y_1[,i] %in% c(overweight_obesity_other_hyperalimentation)),1]="Overweight, obesity, and other hyperalimentation"
      diseases_name[which(y_1[,i] %in% c(other_endocrine_nutritional_metabolic_diseases )),1]="Other endocrine, nutritional and metabolic diseases"
      diseases_name[which(y_1[,i] %in% c(alcohol_abuse)),1]="Alcohol abuse"
      diseases_name[which(y_1[,i] %in%  c(drug_dependence_toxicomania)),1]= "Drug dependence, toxicomania"
      diseases_name[which(y_1[,i] %in% c(other_mental_behavioural_disorders)),1]="Other mental and behavioural disorders"
      diseases_name[which(y_1[,i] %in% c(meningitis)),1]="Meningitis"
      diseases_name[which(y_1[,i] %in% c(parkinsons_diseases )),1]="Parkinson's disease"
      diseases_name[which(y_1[,i] %in% c(alzheimer_disease)),1]="Alzheimer's disease"
      diseases_name[which(y_1[,i] %in% c(multiple_sclerosis)),1]="Multiple sclerosis"
      diseases_name[which(y_1[,i] %in% c(other_diseases_of_the_nervous_system_sense_organs)),1]="Other diseases of the nervous system and the sense organs"
      # heart_diseases
      diseases_name[which(y_1[,i] %in% c(chronic_rheumatic_heart_diseases)),1]="Chronic rheumatic heart diseases"
      diseases_name[which(y_1[,i] %in% c(acute_rheumatic_heart_diseases)),1]="Acute rheumatic heart diseases"
      diseases_name[which(y_1[,i] %in% c(arteriosclerotic_ischaemic_degenerative)),1]="Arteriosclerotic/ischaemic and degenerative"
      diseases_name[which(y_1[,i] %in% c(hypertensive_heart_disease)),1]="Hypertensive heart disease"
      diseases_name[which(y_1[,i] %in% c(pulmonary_heart_disease_pulmonary_circulation)),1]="Pulmonary heart disease and disease of pulmonary circulation"
      diseases_name[which(y_1[,i] %in% c(other_forms_of_heart_disease)),1]="Other forms of heart disease"
      # Cerebrovascular disease
      diseases_name[which(y_1[,i] %in% c(cerebrovascular)),1]="Cerebrovascular disease"
      # Other and unspecified disorders of the circulatory system
      diseases_name[which(y_1[,i] %in% c(artherosclerosis)),1]="Artherosclerosis"
      diseases_name[which(y_1[,i] %in% c(aortic_aneurysm)),1]="Aortic aneurysm"
      diseases_name[which(y_1[,i] %in%  c(other_diseases_of_arteries_arterioles_capillaries)),1]= "Other diseases of arteries, arterioles and capillaries"
      diseases_name[which(y_1[,i] %in% c(other_disorder_of_the_circulatorysystem )),1]="Other disorder of the circulatory system"
      # Respiratory diseases
      diseases_name[which(y_1[,i] %in% c(influenza )),1]="Influenza"
      diseases_name[which(y_1[,i] %in% c(other_acute_respiratory_infections)),1]="Other acute respiratory infections"
      diseases_name[which(y_1[,i] %in% c(pneumonia )),1]="Pneumonia"
      diseases_name[which(y_1[,i] %in% c(chronic_bronchitis )),1]="Chronic bronchitis"
      diseases_name[which(y_1[,i] %in% c(asthma)),1]="Asthma"
      diseases_name[which(y_1[,i] %in% c(other_obstructive_pulmonary_diseases )),1]="Other obstructive pulmonary diseases"
      diseases_name[which(y_1[,i] %in% c(other_respiratory_diseases)),1]="Other respiratory diseases"
      # diseases_of_digestive_systems
      diseases_name[which(y_1[,i] %in% c(gastric_duodenal_ulcer)),1]="Gastric and duodenal ulcer"
      diseases_name[which(y_1[,i] %in% c(gastro_enteritis)),1]="Gastro-enteritis (non-infectious)"
      diseases_name[which(y_1[,i] %in% c(chronic_liver_diseases_cirrhosis)),1]="Chronic liver diseases and cirrhosis"
      diseases_name[which(y_1[,i] %in% c(other_diseases_of_the_digestive_systems)),1]="Other diseases of the digestive system"
      # skin_subcutaneous_tissues 
      diseases_name[which(y_1[,i] %in% c(infections_skin_subcutaneous_tissue)),1]="Infections of skin and subcutaneous tissue"
      diseases_name[which(y_1[,i] %in% c(non_infectious_diseases_of_the_skin_subcutaneous_tissue)),1]="Non-infectious diseases of the skin and subcutaneous tissue"
      # musculoskeletal_connective_tissue
      diseases_name[which(y_1[,i] %in% c(rheumatoid_arthritis_osteoarthrosis)),1]="Rheumatoid arthritis and osteoarthrosis"
      diseases_name[which(y_1[,i] %in%  c(other_diseases_of_the_musculoskeletal_connective_tissue)),1]= "Other diseases of the musculoskeletal system/connective tissue"
      # diseases of genitourinary system
      diseases_name[which(y_1[,i] %in% c(nephritis_nephrosis_renal_failure)),1]="Nephritis, nephrosis and renal failure"
      diseases_name[which(y_1[,i] %in% c(infections_of_kidney)),1]="Infections of kidney"
      diseases_name[which(y_1[,i] %in% c(other_diseases_of_kidney_ureter)),1]="Other diseases of kidney and ureter"
      diseases_name[which(y_1[,i] %in% c(other_diseases_of_the_genitourinary_system )),1]="Other diseases of the genitourinary system"
      # complications_of_pregnacy_childbirth_puerperium
      diseases_name[which(y_1[,i] %in% c(complications_of_pregnacy_childbirth_puerperium )),1]="Complications of pregnancy, childbirth and puerperium"
      # certain_conditions_originating_in_the_perinatal_period
      diseases_name[which(y_1[,i] %in% c(certain_conditions_originating_in_the_perinatal_period)),1]="Certain conditions originating in the perinatal period"
      # congenital_malformations
      diseases_name[which(y_1[,i] %in% c(congenital_malformations_of_the_nervous_system)),1]="Congenital malformations of the nervous system"
      diseases_name[which(y_1[,i] %in% c(congenital_malformations_of_the_circulatory_system)),1]="Congenital malformations of the circulatory system"
      diseases_name[which(y_1[,i] %in% c(other_congenital_malformations_anomalies)),1]="Other congenital malformations/anomalies"
      # ill_defined_or_unknown
      diseases_name[which(y_1[,i] %in% c(senility_without_psychosis)),1]="Senility without psychosis"
      diseases_name[which(y_1[,i] %in% c(sudden_death)),1]="Sudden death"
      diseases_name[which(y_1[,i] %in% c(unknown_unspecified_causes )),1]="Unknown and unspecified causes"
      diseases_name[which(y_1[,i] %in% c(other_ill_defined_unknown)),1]="Other ill-defined or unknown"
      #external_cause 
      diseases_name[which(y_1[,i] %in% c(motor_vehicle_accidents)),1]="Motor vehicle accidents"
      diseases_name[which(y_1[,i] %in% c(accidental_falls)),1]="Accidental falls"
      diseases_name[which(y_1[,i] %in% c(accidental_poisoning_by_alcohol)),1]="Accidental poisoning by alcohol"
      diseases_name[which(y_1[,i] %in% c(other_accidental_poisoning)),1]="Other accidental poisoning"
      diseases_name[which(y_1[,i] %in% c(other_accidents )),1]="Other accidents"
      diseases_name[which(y_1[,i] %in% c(suicide)),1]="Suicide"
      diseases_name[which(y_1[,i] %in% c(homicide)),1]="Homicide"
      diseases_name[which(y_1[,i] %in% c(events_of_undetermined_intent)),1]="Events of undetermined intent"
      diseases_name[which(y_1[,i] %in% c(other_external_causes)),1]="Other external causes"
      y_1=cbind(y_1,diseases_name)
    }
    
    old_names<- rep("diseases_name", 21)
    new_names<- c("ucod disease",paste0("disease_", seq(1, 20)))
    
    # Change the columns name and removal all original ICD-10 codes
    colnames(y_1)[35:55] <- new_names
    # Export the data as RDS
    # Smaller size and much faster than writing in csv. 
    # More efficient in re-load and manipulate the data sets. 
    y_1 <-y_1[c(-13, -15:-34)]
    
    y_2<-y_1 %>%
      mutate(sex = case_when(
        sex == "M" ~ "Male", 
        sex == "F" ~ "Female"
      )) %>%
      mutate(marstat = case_when(
        marstat == "S" ~ "Never married", 
        marstat == "M" ~ "Married", 
        marstat == "W" ~ "Widowed", 
        marstat == "D" ~ "Divorced", 
        marstat == "N" ~ "Not on certificate", 
        marstat == "U" ~ "Not stated"
        
      )) %>%
      mutate(monthdth =  case_when(
        monthdth == 1 ~ "January",
        monthdth == 2 ~ "February",
        monthdth == 3 ~ "March",
        monthdth == 4 ~ "April",
        monthdth == 5 ~ "May",
        monthdth == 6 ~ "June",
        monthdth == 7 ~ "July",
        monthdth == 8 ~ "August",
        monthdth == 9 ~ "September",
        monthdth == 10 ~ "October",
        monthdth == 11 ~ "November",
        monthdth == 12 ~ "December"
        
      )) %>%
      
      mutate(race = case_when(
        race ==  1 ~ "White",
        race ==  2 ~ "Black",
        race ==  3 ~ "American Indian (includes Aleuts and Eskimos)",
        race ==  4 ~ "Chinese",
        race ==  5 ~ "Japanese",
        race ==  6 ~ "Hawaiian (includes Part-Hawaiian)",
        race ==  7 ~ "Filipino",
        race == 18 ~ "Asian Indian", 
        race == 28 ~ "Korean", 
        race == 38 ~ "Samoan", 
        race == 48 ~ "Vietnamese", 
        race == 58 ~ "Guamanian", 
        race == 68 ~ "Other Asian or Pacific Islander",
        race == 78 ~ "Combined other Asian or Pacific Islander"
        
      )) %>%
      mutate(ager12 = case_when(
        ager12 == 1 ~ "under 1 year", 
        ager12 == 2 ~ "1-4 years", 
        ager12 == 3 ~ "5-14 years", 
        ager12 == 4 ~ "15-24 years", 
        ager12 == 5 ~ "25-34 years", 
        ager12 == 6 ~ "35-44 years", 
        ager12 == 7 ~ "45-54 years", 
        ager12 == 8 ~ "55-64 years", 
        ager12 == 9 ~ "65-74 years", 
        ager12 == 10 ~ "75-84 years", 
        ager12 == 11 ~ "85 years and over", 
        ager12 == 12 ~ "Age not stated"
        
      )) %>%
      mutate(placdth= case_when(
        placdth== 1 ~ "Inpatient",
        placdth== 2~ "Outpatient or admitted to Emergency Room",
        placdth== 3~ "Dead on Arrival",
        placdth== 4 ~ "Patient status unknown",
        placdth== 5 ~ "Nursing home",
        placdth== 6 ~ "Residence",
        placdth== 7~ "Other",
        placdth== 9~ "Place of death unknown"
      )) %>%
      mutate(hspanicr = case_when(
        hspanicr == 1~ "Mexican", 
        hspanicr == 2~ "Puerto Rican", 
        hspanicr == 3~ "Cuban", 
        hspanicr == 4~ "Central or South American", 
        hspanicr == 5~ "Other or unknown Hispanic", 
        hspanicr == 6~ "Non-Hispanic white", 
        hspanicr == 7~ "Non-Hispanic black", 
        hspanicr == 8~ "Non-Hispanic other races",
        hspanicr == 9~ "Hispanic origin unknown", 
      )) %>%
      mutate_at(vars(mandeath), ~replace_na(., 0))%>%
      mutate(mandeath = case_when(
        mandeath ==1 ~ "Accident", 
        mandeath ==2 ~ "Suicide", 
        mandeath ==3 ~ "Homicide", 
        mandeath ==4 ~ "Pending investigation", 
        mandeath ==5 ~ "Could not determine", 
        mandeath ==6 ~ "Self-Inflicted", 
        mandeath ==7 ~ "Natural",
        mandeath ==0 ~  "Not specified" ))  %>%
      mutate(educr = 
               case_when(
                 educ1989 == "0" & educflag == "0" ~ "0-8 years",
                 educ1989 == "1" & educflag == "0" ~ "0-8 years",
                 educ1989 == "2" & educflag == "0" ~ "0-8 years",
                 educ1989 == "3" & educflag == "0" ~ "0-8 years",
                 educ1989 == "4" & educflag == "0" ~ "0-8 years",
                 educ1989 == "5" & educflag == "0" ~ "0-8 years",
                 educ1989 == "6" & educflag == "0" ~ "0-8 years",
                 educ1989 == "7" & educflag == "0" ~ "0-8 years",
                 educ1989 == "8" & educflag == "0" ~ "0-8 years",
                 educ1989 == "9"  & educflag == "0"~ "9-11 years", 
                 educ1989 == "10"  & educflag == "0"~ "9-11 years", 
                 educ1989 == "11"  & educflag == "0"~ "9-11 years", 
                 educ1989 == "12" & educflag == "0" ~ "12 years", 
                 educ1989 == "13" & educflag == "0" ~ "13-15 years",
                 educ1989 == "14" & educflag == "0" ~ "13-15 years",
                 educ1989 == "15" & educflag == "0" ~ "13-15 years",
                 educ1989 == "16" & educflag == "0" ~ "16 years and more", 
                 educ1989 == "17" & educflag == "0" ~ "16 years and more", 
                 educ1989 =="99" & educflag == "0" ~"Not stated", 
                 educ2003 == "1" & educflag == "1" ~ "0-8 years",
                 educ2003 == "2" & educflag == "1" ~ "9-11 years",
                 educ2003 == "3" & educflag == "1" ~ "12 years",
                 educ2003 == "4" & educflag == "1" ~ "13-15 years",
                 educ2003 == "5" & educflag == "1" ~ "13-15 years",
                 educ2003 == "6" & educflag == "1" ~ "16 years and more",
                 educ2003 == "7" & educflag == "1" ~ "16 years and more",
                 educ2003 == "8" & educflag == "1" ~ "16 years and more",
                 educ2003 == "9" & educflag == "1" ~ "Not Stated",
                 educflag == "2" ~ "Not Stated")) %>%
      select(-educ1989, -educ2003, -educflag)
    
    
    
    
    saveRDS(y_2, paste0("new_mort", y_2[1, 1]))
  }  

mortality_2019<- readRDS("/Users/zhengyangdong/new_mort2019")
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


################## add covid-19 and created 93 diseases ###################
data_process_20<- function(x){
  y<- x[column_05]
  # Since the mortality code only contains one letter and 2 digits, 
  # we are using 'substr()'to keep the first 3 strings. 
  y_1 <-  y%>%
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
  for (i in  c(13,15:34)){
    diseases_name <- matrix(nrow=nrow(y_1),ncol=1)
    diseases_name[which(y_1[,i] %in% c(tuberculosis)),1]="Tuberculosis"
    diseases_name[which(y_1[,i] %in% c(syphilis)),1]="Syphilis"
    diseases_name[which(y_1[,i] %in% c(infectious_gastro_enteritis)),1]="Infectious Gastro-enteritis"
    diseases_name[which(y_1[,i] %in% c(dysentery)),1]="Dysentery"
    diseases_name[which(y_1[,i] %in% c(meningococcal_infection)),1]="Meningococcal infection"
    diseases_name[which(y_1[,i] %in%  c(septicemia)),1]= "Septicemia"
    diseases_name[which(y_1[,i] %in% c(viral_hepatitis)),1]="Viral hepatitis"
    diseases_name[which(y_1[,i] %in% c(hiv_aids)),1]="HIV AIDS"
    diseases_name[which(y_1[,i] %in% c(other_infectious_diseases)),1]="Other infectious diseases"
    # malignant_neoplasm 
    diseases_name[which(y_1[,i] %in% c(lip_oral_cavity_pharynx_neoplasm)),1]="Lip/oral cavity/pharynx neoplasm"
    diseases_name[which(y_1[,i] %in% c(esophagus_neoplasm)),1]="Esophagus neoplasm"
    diseases_name[which(y_1[,i] %in% c(stomach_neoplasm)),1]="Stomach neoplasm"
    diseases_name[which(y_1[,i] %in% c(colon_neoplasm)),1]="Colon neoplasm"
    diseases_name[which(y_1[,i] %in% c(rectum_neoplasm)),1]="Rectum neoplasm"
    diseases_name[which(y_1[,i] %in% c(liver_gallbladder_bile_ducts_neoplasm)),1]="Liver, gallbladder and bile ducts neoplasm"
    diseases_name[which(y_1[,i] %in% c(pancreas_neoplasm)),1]="Pancreas neoplasm"
    diseases_name[which(y_1[,i] %in% c(larynx_neoplasm)),1]="Larynx neoplasm"
    diseases_name[which(y_1[,i] %in% c(trachea_bronchus_lung_neoplasm)),1]="Trachea, bronchus, and lung neoplasm"
    diseases_name[which(y_1[,i] %in% c(skin_neoplasm)),1]="Skin neoplasm"
    diseases_name[which(y_1[,i] %in% c(breast_neoplasm)),1]="Breast neoplasm"
    diseases_name[which(y_1[,i] %in% c(cervix_uteri_neoplasm)),1]="Cervix uteri neoplasm"
    diseases_name[which(y_1[,i] %in% c(other_parts_of_uterus_neoplasm)),1]= "Other parts of uterus neoplasm"
    diseases_name[which(y_1[,i] %in% c(ovary_neoplasm)),1]="Ovary neoplasm"
    diseases_name[which(y_1[,i] %in% c(prostate_neoplasm)),1]="Prostate neoplasm"
    diseases_name[which(y_1[,i] %in% c(kidney_neoplasm)),1]="Kidney neoplasm"
    diseases_name[which(y_1[,i] %in% c(bladder_neoplasm)),1]="Bladder neoplasm"
    diseases_name[which(y_1[,i] %in% c(hodgkin_lymphoma_neoplasm)),1]="Hodgkin lymphoma"
    diseases_name[which(y_1[,i] %in% c(non_hodgkin_lymphoma_neoplasm)),1]="Non-Hodgkin lymphoma"
    diseases_name[which(y_1[,i] %in% c(myeloma_neoplasm)),1]="Myeloma"
    diseases_name[which(y_1[,i] %in% c(leukemia_neoplasm)),1]="Leukemia"
    diseases_name[which(y_1[,i] %in% c(other_malignant_neoplasms)),1]="Other malignant neoplasms"
    # other_neoplasms 
    diseases_name[which(y_1[,i] %in% c(other_neoplasms)),1]="Other neoplasms"
    # blood_and_blood_forming_organs
    diseases_name[which(y_1[,i] %in% c(blood_and_blood_forming_organs)),1]="Diseases of the blood and blood-forming organs"
    diseases_name[which(y_1[,i] %in% c(diabetes_mellitus)),1]="Diabetes Mellitus"
    diseases_name[which(y_1[,i] %in% c(overweight_obesity_other_hyperalimentation)),1]="Overweight, obesity, and other hyperalimentation"
    diseases_name[which(y_1[,i] %in% c(other_endocrine_nutritional_metabolic_diseases )),1]="Other endocrine, nutritional and metabolic diseases"
    diseases_name[which(y_1[,i] %in% c(alcohol_abuse)),1]="Alcohol abuse"
    diseases_name[which(y_1[,i] %in%  c(drug_dependence_toxicomania)),1]= "Drug dependence, toxicomania"
    diseases_name[which(y_1[,i] %in% c(other_mental_behavioural_disorders)),1]="Other mental and behavioural disorders"
    diseases_name[which(y_1[,i] %in% c(meningitis)),1]="Meningitis"
    diseases_name[which(y_1[,i] %in% c(parkinsons_diseases )),1]="Parkinson's disease"
    diseases_name[which(y_1[,i] %in% c(alzheimer_disease)),1]="Alzheimer's disease"
    diseases_name[which(y_1[,i] %in% c(multiple_sclerosis)),1]="Multiple sclerosis"
    diseases_name[which(y_1[,i] %in% c(other_diseases_of_the_nervous_system_sense_organs)),1]="Other diseases of the nervous system and the sense organs"
    # heart_diseases
    diseases_name[which(y_1[,i] %in% c(chronic_rheumatic_heart_diseases)),1]="Chronic rheumatic heart diseases"
    diseases_name[which(y_1[,i] %in% c(acute_rheumatic_heart_diseases)),1]="Acute rheumatic heart diseases"
    diseases_name[which(y_1[,i] %in% c(arteriosclerotic_ischaemic_degenerative)),1]="Arteriosclerotic/ischaemic and degenerative"
    diseases_name[which(y_1[,i] %in% c(hypertensive_heart_disease)),1]="Hypertensive heart disease"
    diseases_name[which(y_1[,i] %in% c(pulmonary_heart_disease_pulmonary_circulation)),1]="Pulmonary heart disease and disease of pulmonary circulation"
    diseases_name[which(y_1[,i] %in% c(other_forms_of_heart_disease)),1]="Other forms of heart disease"
    # Cerebrovascular disease
    diseases_name[which(y_1[,i] %in% c(cerebrovascular)),1]="Cerebrovascular disease"
    # Other and unspecified disorders of the circulatory system
    diseases_name[which(y_1[,i] %in% c(artherosclerosis)),1]="Artherosclerosis"
    diseases_name[which(y_1[,i] %in% c(aortic_aneurysm)),1]="Aortic aneurysm"
    diseases_name[which(y_1[,i] %in%  c(other_diseases_of_arteries_arterioles_capillaries)),1]= "Other diseases of arteries, arterioles and capillaries"
    diseases_name[which(y_1[,i] %in% c(other_disorder_of_the_circulatorysystem )),1]="Other disorder of the circulatory system"
    # Respiratory diseases
    diseases_name[which(y_1[,i] %in% c(influenza )),1]="Influenza"
    diseases_name[which(y_1[,i] %in% c(other_acute_respiratory_infections)),1]="Other acute respiratory infections"
    diseases_name[which(y_1[,i] %in% c(pneumonia )),1]="Pneumonia"
    diseases_name[which(y_1[,i] %in% c(chronic_bronchitis )),1]="Chronic bronchitis"
    diseases_name[which(y_1[,i] %in% c(asthma)),1]="Asthma"
    diseases_name[which(y_1[,i] %in% c(other_obstructive_pulmonary_diseases )),1]="Other obstructive pulmonary diseases"
    diseases_name[which(y_1[,i] %in% c(other_respiratory_diseases)),1]="Other respiratory diseases"
    diseases_name[which(y_1[,i] %in% c(covid)),1]="Covid-19"
    # diseases_of_digestive_systems
    diseases_name[which(y_1[,i] %in% c(gastric_duodenal_ulcer)),1]="Gastric and duodenal ulcer"
    diseases_name[which(y_1[,i] %in% c(gastro_enteritis)),1]="Gastro-enteritis (non-infectious)"
    diseases_name[which(y_1[,i] %in% c(chronic_liver_diseases_cirrhosis)),1]="Chronic liver diseases and cirrhosis"
    diseases_name[which(y_1[,i] %in% c(other_diseases_of_the_digestive_systems)),1]="Other diseases of the digestive system"
    # skin_subcutaneous_tissues 
    diseases_name[which(y_1[,i] %in% c(infections_skin_subcutaneous_tissue)),1]="Infections of skin and subcutaneous tissue"
    diseases_name[which(y_1[,i] %in% c(non_infectious_diseases_of_the_skin_subcutaneous_tissue)),1]="Non-infectious diseases of the skin and subcutaneous tissue"
    # musculoskeletal_connective_tissue
    diseases_name[which(y_1[,i] %in% c(rheumatoid_arthritis_osteoarthrosis)),1]="Rheumatoid arthritis and osteoarthrosis"
    diseases_name[which(y_1[,i] %in%  c(other_diseases_of_the_musculoskeletal_connective_tissue)),1]= "Other diseases of the musculoskeletal system/connective tissue"
    # diseases of genitourinary system
    diseases_name[which(y_1[,i] %in% c(nephritis_nephrosis_renal_failure)),1]="Nephritis, nephrosis and renal failure"
    diseases_name[which(y_1[,i] %in% c(infections_of_kidney)),1]="Infections of kidney"
    diseases_name[which(y_1[,i] %in% c(other_diseases_of_kidney_ureter)),1]="Other diseases of kidney and ureter"
    diseases_name[which(y_1[,i] %in% c(other_diseases_of_the_genitourinary_system )),1]="Other diseases of the genitourinary system"
    # complications_of_pregnacy_childbirth_puerperium
    diseases_name[which(y_1[,i] %in% c(complications_of_pregnacy_childbirth_puerperium )),1]="Complications of pregnancy, childbirth and puerperium"
    # certain_conditions_originating_in_the_perinatal_period
    diseases_name[which(y_1[,i] %in% c(certain_conditions_originating_in_the_perinatal_period)),1]="Certain conditions originating in the perinatal period"
    # congenital_malformations
    diseases_name[which(y_1[,i] %in% c(congenital_malformations_of_the_nervous_system)),1]="Congenital malformations of the nervous system"
    diseases_name[which(y_1[,i] %in% c(congenital_malformations_of_the_circulatory_system)),1]="Congenital malformations of the circulatory system"
    diseases_name[which(y_1[,i] %in% c(other_congenital_malformations_anomalies)),1]="Other congenital malformations/anomalies"
    # ill_defined_or_unknown
    diseases_name[which(y_1[,i] %in% c(senility_without_psychosis)),1]="Senility without psychosis"
    diseases_name[which(y_1[,i] %in% c(sudden_death)),1]="Sudden death"
    diseases_name[which(y_1[,i] %in% c(unknown_unspecified_causes )),1]="Unknown and unspecified causes"
    diseases_name[which(y_1[,i] %in% c(other_ill_defined_unknown)),1]="Other ill-defined or unknown"
    #external_cause 
    diseases_name[which(y_1[,i] %in% c(motor_vehicle_accidents)),1]="Motor vehicle accidents"
    diseases_name[which(y_1[,i] %in% c(accidental_falls)),1]="Accidental falls"
    diseases_name[which(y_1[,i] %in% c(accidental_poisoning_by_alcohol)),1]="Accidental poisoning by alcohol"
    diseases_name[which(y_1[,i] %in% c(other_accidental_poisoning)),1]="Other accidental poisoning"
    diseases_name[which(y_1[,i] %in% c(other_accidents )),1]="Other accidents"
    diseases_name[which(y_1[,i] %in% c(suicide)),1]="Suicide"
    diseases_name[which(y_1[,i] %in% c(homicide)),1]="Homicide"
    diseases_name[which(y_1[,i] %in% c(events_of_undetermined_intent)),1]="Events of undetermined intent"
    diseases_name[which(y_1[,i] %in% c(other_external_causes)),1]="Other external causes"
    y_1=cbind(y_1,diseases_name)
  }
  
  old_names<- rep("diseases_name", 21)
  new_names<- c("ucod disease",paste0("disease_", seq(1, 20)))
  
  # Change the columns name and removal all original ICD-10 codes
  colnames(y_1)[35:55] <- new_names
  # Export the data as RDS
  # Smaller size and much faster than writing in csv. 
  # More efficient in re-load and manipulate the data sets. 
  y_1 <-y_1[c(-13, -15:-34)]
  
  y_2<-y_1 %>%
    mutate(sex = case_when(
      sex == "M" ~ "Male", 
      sex == "F" ~ "Female"
    )) %>%
    mutate(marstat = case_when(
      marstat == "S" ~ "Never married", 
      marstat == "M" ~ "Married", 
      marstat == "W" ~ "Widowed", 
      marstat == "D" ~ "Divorced", 
      marstat == "N" ~ "Not on certificate", 
      marstat == "U" ~ "Not stated"
      
    )) %>%
    mutate(monthdth =  case_when(
      monthdth == 1 ~ "January",
      monthdth == 2 ~ "February",
      monthdth == 3 ~ "March",
      monthdth == 4 ~ "April",
      monthdth == 5 ~ "May",
      monthdth == 6 ~ "June",
      monthdth == 7 ~ "July",
      monthdth == 8 ~ "August",
      monthdth == 9 ~ "September",
      monthdth == 10 ~ "October",
      monthdth == 11 ~ "November",
      monthdth == 12 ~ "December"
      
    )) %>%
    
    mutate(race = case_when(
      race ==  1 ~ "White",
      race ==  2 ~ "Black",
      race ==  3 ~ "American Indian (includes Aleuts and Eskimos)",
      race ==  4 ~ "Chinese",
      race ==  5 ~ "Japanese",
      race ==  6 ~ "Hawaiian (includes Part-Hawaiian)",
      race ==  7 ~ "Filipino",
      race == 18 ~ "Asian Indian", 
      race == 28 ~ "Korean", 
      race == 38 ~ "Samoan", 
      race == 48 ~ "Vietnamese", 
      race == 58 ~ "Guamanian", 
      race == 68 ~ "Other Asian or Pacific Islander",
      race == 78 ~ "Combined other Asian or Pacific Islander"
      
    )) %>%
    mutate(ager12 = case_when(
      ager12 == 1 ~ "under 1 year", 
      ager12 == 2 ~ "1-4 years", 
      ager12 == 3 ~ "5-14 years", 
      ager12 == 4 ~ "15-24 years", 
      ager12 == 5 ~ "25-34 years", 
      ager12 == 6 ~ "35-44 years", 
      ager12 == 7 ~ "45-54 years", 
      ager12 == 8 ~ "55-64 years", 
      ager12 == 9 ~ "65-74 years", 
      ager12 == 10 ~ "75-84 years", 
      ager12 == 11 ~ "85 years and over", 
      ager12 == 12 ~ "Age not stated"
      
    )) %>%
    mutate(placdth= case_when(
      placdth== 1 ~ "Inpatient",
      placdth== 2~ "Outpatient or admitted to Emergency Room",
      placdth== 3~ "Dead on Arrival",
      placdth== 4 ~ "Patient status unknown",
      placdth== 5 ~ "Nursing home",
      placdth== 6 ~ "Residence",
      placdth== 7~ "Other",
      placdth== 9~ "Place of death unknown"
    )) %>%
    mutate(hspanicr = case_when(
      hspanicr == 1~ "Mexican", 
      hspanicr == 2~ "Puerto Rican", 
      hspanicr == 3~ "Cuban", 
      hspanicr == 4~ "Central or South American", 
      hspanicr == 5~ "Other or unknown Hispanic", 
      hspanicr == 6~ "Non-Hispanic white", 
      hspanicr == 7~ "Non-Hispanic black", 
      hspanicr == 8~ "Non-Hispanic other races",
      hspanicr == 9~ "Hispanic origin unknown", 
    )) %>%
    mutate_at(vars(mandeath), ~replace_na(., 0))%>%
    mutate(mandeath = case_when(
      mandeath ==1 ~ "Accident", 
      mandeath ==2 ~ "Suicide", 
      mandeath ==3 ~ "Homicide", 
      mandeath ==4 ~ "Pending investigation", 
      mandeath ==5 ~ "Could not determine", 
      mandeath ==6 ~ "Self-Inflicted", 
      mandeath ==7 ~ "Natural",
      mandeath ==0 ~  "Not specified" ))  %>%
    mutate(educr = 
             case_when(
               educ1989 == "0" & educflag == "0" ~ "0-8 years",
               educ1989 == "1" & educflag == "0" ~ "0-8 years",
               educ1989 == "2" & educflag == "0" ~ "0-8 years",
               educ1989 == "3" & educflag == "0" ~ "0-8 years",
               educ1989 == "4" & educflag == "0" ~ "0-8 years",
               educ1989 == "5" & educflag == "0" ~ "0-8 years",
               educ1989 == "6" & educflag == "0" ~ "0-8 years",
               educ1989 == "7" & educflag == "0" ~ "0-8 years",
               educ1989 == "8" & educflag == "0" ~ "0-8 years",
               educ1989 == "9"  & educflag == "0"~ "9-11 years", 
               educ1989 == "10"  & educflag == "0"~ "9-11 years", 
               educ1989 == "11"  & educflag == "0"~ "9-11 years", 
               educ1989 == "12" & educflag == "0" ~ "12 years", 
               educ1989 == "13" & educflag == "0" ~ "13-15 years",
               educ1989 == "14" & educflag == "0" ~ "13-15 years",
               educ1989 == "15" & educflag == "0" ~ "13-15 years",
               educ1989 == "16" & educflag == "0" ~ "16 years and more", 
               educ1989 == "17" & educflag == "0" ~ "16 years and more", 
               educ1989 =="99" & educflag == "0" ~"Not stated", 
               educ2003 == "1" & educflag == "1" ~ "0-8 years",
               educ2003 == "2" & educflag == "1" ~ "9-11 years",
               educ2003 == "3" & educflag == "1" ~ "12 years",
               educ2003 == "4" & educflag == "1" ~ "13-15 years",
               educ2003 == "5" & educflag == "1" ~ "13-15 years",
               educ2003 == "6" & educflag == "1" ~ "16 years and more",
               educ2003 == "7" & educflag == "1" ~ "16 years and more",
               educ2003 == "8" & educflag == "1" ~ "16 years and more",
               educ2003 == "9" & educflag == "1" ~ "Not Stated",
               educflag == "2" ~ "Not Stated")) %>%
    select(-educ1989, -educ2003, -educflag)
  
  
  
  
  saveRDS(y_2, paste0("new_mort", y_2[1, 1]))
}  

data_process_20(mort2020)