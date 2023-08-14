# 92 GROUPINGS ICD-9 

library(dplyr)
library(tidyverse)
nums<- c(paste0("00", 1:9), paste0("0", 10:99), 100:999)


#### all small letters + underscore ####

# certain_infectious_diseases
tuberculosis <- sort(nums[10:18])
syphilis <- sort(nums[90:97])
infectious_gastro_enteritis <- sort(nums[8: 9])
dysentery <- sort(nums[c(4,6)])
meningococcal_infection <- nums[36]
septicemia<- sort(nums[38])
viral_hepatitis<- sort(nums[70])
hiv_aids<- sort(nums[42:44])
other_infectious_diseases <- sort(nums[c(1:3, 5,7, 20:35, 37, 
                                         39:41, 45:66, 71:88, 98:139)])


# malignant_neoplasm 
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
myeloma_neoplasm <- nums[203]
leukemia_neoplasm <-sort(nums[204:208])
other_malignant_neoplasms <- sort(nums[c(152,158:160, 163:171, 176, 181,184,
                                           186, 187, 190:199)])


other_neoplasms <- sort(nums[210:239])


blood_and_blood_forming_organs <- sort(nums[279:289])


# endocrine_nutritional_metabolic 
diabetes_mellitus <- nums[250]
overweight_obesity_other_hyperalimentation <- nums[278]
other_endocrine_nutritional_metabolic_diseases <-sort(nums[c(240:246, 251:277)])

# mental_behavioral_disorders 
alcohol_abuse<- sort(nums[c(291, 303)])
drug_dependence_toxicomania <- sort(nums[304:305])
other_mental_behavioural_disorders  <-sort(nums[c(290, 292:302, 306:319)])

#nervous_systems_sense_organs 
meningitis<- sort(nums[320:322])
parkinsons_diseases <- nums[332]
alzheimer_disease <- nums[331]
multiple_sclerosis<- nums[340]
other_diseases_of_the_nervous_system_sense_organs <- sort(nums[c(323:330, 333:337, 341:389)])

# heart diseases 
chronic_rheumatic_heart_diseases <- sort(nums[393:398])
acute_rheumatic_heart_diseases <- sort(nums[390:392])
arteriosclerotic_ischaemic_degenerative <- sort(nums[410:414])
hypertensive_heart_disease <- sort(nums[401:405])
pulmonary_heart_disease_pulmonary_circulation <- sort(nums[415:417])
other_forms_of_heart_disease <- sort(nums[420:429])


# cerebrovascular diseases 
cerebrovascular <-sort(nums[430:438])


# unspecific disorders of the circulatory diseases 
artherosclerosis <- nums[440]
aortic_aneurysm <- nums[441]
other_diseases_of_arteries_arterioles_capillaries <- sort(nums[442:449])
other_disorder_of_the_circulatorysystem <- sort(nums[451:459])


#respiratory diseases 
influenza <- nums[487]
other_acute_respiratory_infections<- sort(nums[460:466])
pneumonia <- sort(nums[480:486])
chronic_bronchitis <- sort(nums[490:491])
asthma <-nums[493]
other_obstructive_pulmonary_diseases <- sort(nums[c(492, 494, 496)])
other_respiratory_diseases <- sort(nums[c(470:478, 488, 495, 500:519)])


# diseases_of_digestive_systems
gastric_duodenal_ulcer <- sort(nums[531:534])
gastro_enteritis <- sort(nums[c(535, 555, 556, 558, 562)])
chronic_liver_diseases_cirrhosis <- nums[571]
other_diseases_of_the_digestive_systems <- sort(nums[c(520:530, 536:553, 557, 
                                                       560, 561, 563:570, 572:579)])


# skin_subcutaneous_tissues 
infections_skin_subcutaneous_tissue <- sort(nums[680:686])
non_infectious_diseases_of_the_skin_subcutaneous_tissue <- sort(nums[690:709])


# musculoskeletal_connective_tissue
rheumatoid_arthritis_osteoarthrosis<- sort(nums[714:715])
other_diseases_of_the_musculoskeletal_connective_tissue<- sort(nums[c(710:713,
                                                                      716:739)])


# diseases of genitourinary system
nephritis_nephrosis_renal_failure<- sort(nums[580:586])
infections_of_kidney <- nums[590]
other_diseases_of_kidney_ureter<- sort(nums[c(587:589, 591:594)])
other_diseases_of_the_genitourinary_system <- sort(nums[595:629])


# complications_of_pregnacy_childbirth_puerperium
complications_of_pregnacy_childbirth_puerperium <-sort(nums[630:676])
 

# certain_conditions_originating_in_the_perinatal_period
certain_conditions_originating_in_the_perinatal_period<- sort(nums[760:779])


# congenital_malformations
congenital_malformations_of_the_nervous_system <- sort(nums[740:742])
congenital_malformations_of_the_circulatory_system<- sort(nums[745:747])
other_congenital_malformations_anomalies<- sort(nums[c(743, 744, 748:759)])


# ill_defined_or_unknown
senility_without_psychosis <- nums[797]
sudden_death <-nums[798]
unknown_unspecified_causes <- nums[799]
other_ill_defined_unknown<- sort(nums[780:796])


#external_cause 
external_cause<- sort(unlist(list(outer(LETTERS[5], nums[800:999], paste0))))

motor_vehicle_accidents <- external_cause[c(11:26)]
accidental_falls <- external_cause[81:89]
accidental_poisoning_by_alcohol<- external_cause[61]
other_accidental_poisoning<- external_cause[c(51:60, 62:70)]
other_accidents <- external_cause[c(1:8, 27:49, 71:80, 91:150)] 
suicide<- external_cause[151:160]
homicide <- external_cause[161:170]
events_of_undetermined_intent <- external_cause[181:190]
other_external_causes <- external_cause[c(171:180, 191:200)]


mort1979<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1979.csv" )
mort1980<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1980.csv"  )
mort1981<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1981.csv" )
mort1982<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1982.csv" )
mort1983<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1983.csv" )
mort1984<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1984.csv"  )
mort1985<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1985.csv"  )
mort1986<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1986.csv" )
mort1987<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1987.csv" )
mort1988<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1988.csv" )

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
  
  y_1 <-y_1[c(-12, -14:-33)]
  y_1["datayear"]<- paste0("19", y_1[1,1])
  
  y_2<-y_1 %>%
    select(-restatus,-stateoc )%>%
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
                       staters ==59 ~'Remainder of the world'
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
    mutate(autopsy = case_when(
      autopsy == 1 ~ "Yes", 
      autopsy == 2 ~ "No", 
      autopsy == 8 ~ "Autopsy performed not on certificate", 
      autopsy == 9 ~ "Autopsy performed not stated"
    ))%>%
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
      race ==  0 ~ "Other Asian or Pacific Islander",
      race ==  1 ~ "White",
      race ==  2 ~ "Black",
      race ==  3 ~ "American Indian (includes Aleuts and Eskimos)",
      race ==  4 ~ "Chinese",
      race ==  5 ~ "Japanese",
      race ==  6 ~ "Hawaiian (includes Part-Hawaiian)",
      race ==  7 ~ "All other Races",
      race == 8 ~"Filipino"

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
    mutate(hospstat= case_when(
      hospstat== 1 ~ "Inpatient",
      hospstat== 2~ "Outpatient or admitted to Emergency Room",
      hospstat== 3~ "Dead on Arrival",
      hospstat== 4 ~ "Patient status unknown",
      hospstat== 5 ~ "Patient status not on certificate",
      hospstat== 6 ~ "Other Institutions providing patient care",
      hospstat== 7~ "All other reported entries",
      hospstat== 9~ "Hospital and patient status not stated"
    ))
    
    
  saveRDS(y_2, paste0("new_mort", y_2[1, 1]))
}  



data_process_79(mort1979)
data_process_79(mort1980)
data_process_79(mort1981)
data_process_79(mort1982)
data_process_79(mort1983)

############################################################################
#######################Adding origin as a new column #######################
colnames(mort1984)
column_84 <- c("datayear", "restatus", "stateoc" , "staters" , "monthdth", "sex",  "race", "ager12",
                                 "hospstat" ,  "marstat",  "autopsy" ,'origin', "ucod", 
                                 "ranum", "record_1", "record_2", "record_3", "record_4", "record_5", "record_6", "record_7", 
                                 "record_8", "record_9", "record_10", "record_11", "record_12", "record_13", "record_14", 
                                 "record_15", "record_16", "record_17", "record_18", "record_19", "record_20" )


# ucod at position 13, multiple causes of death at position 15:34

data_process_84 <- function(x){
  y<- x[column_84]
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
  
  y_1 <-y_1[c(-13, -15:-34)]
  y_1["datayear"]<- paste0("19", y_1[1,1])
  
  y_2<-y_1 %>%
    select(-restatus,-stateoc )%>%
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
                       staters ==59 ~'Remainder of the world'
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
    mutate(autopsy = case_when(
      autopsy == 1 ~ "Yes", 
      autopsy == 2 ~ "No", 
      autopsy == 8 ~ "Autopsy performed not on certificate", 
      autopsy == 9 ~ "Autopsy performed not stated"
    ))%>%
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
      race ==  0 ~ "Other Asian or Pacific Islander",
      race ==  1 ~ "White",
      race ==  2 ~ "Black",
      race ==  3 ~ "American Indian (includes Aleuts and Eskimos)",
      race ==  4 ~ "Chinese",
      race ==  5 ~ "Japanese",
      race ==  6 ~ "Hawaiian (includes Part-Hawaiian)",
      race ==  7 ~ "All other Races",
      race == 8 ~"Filipino"
      
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
    mutate(hospstat= case_when(
      hospstat== 1 ~ "Inpatient",
      hospstat== 2~ "Outpatient or admitted to Emergency Room",
      hospstat== 3~ "Dead on Arrival",
      hospstat== 4 ~ "Patient status unknown",
      hospstat== 5 ~ "Patient status not on certificate",
      hospstat== 6 ~ "Other Institutions providing patient care",
      hospstat== 7~ "All other reported entries",
      hospstat== 9~ "Hospital and patient status not stated"
    )) %>%
    mutate(origin =case_when(
      origin==0 ~ "Non-Spanish" ,
      origin==1 ~"Mexican",
      origin== 2 ~ "Puerto Rican",
      origin== 3 ~"Cuban",
      origin== 4~"Central or South American",
      origin== 5~"Other or Unknown Spanish",
      origin== 6~"American",
      origin== 7~"American Indian",
      origin== 8~"British, Scottish, Welsh, Scotch-Iris",
      origin== 9~"Irish",
      origin== 10~"German",
      origin== 11~"French",
      origin== 12~"Norwegian, Swedish, Danish",
      origin== 13~"Polish",
      origin== 14~"Italian",
      origin== 15~"Other North, Central, and South American",
      origin== 16~"Other Western European",
      origin== 17~"Other Northern European",
      origin== 18~"Other Eastern European",
      origin== 19~"Other Southern European (excluding Spain)",
      origin== 20~"Southeast Asian and Pacific Islander",
      origin== 21~"South Central Asian",
      origin== 22~"Other Asian",
      origin== 23~"North African",
      origin== 24~"Other African",
      origin== 88~"Not reported",
      origin== 99~"Not classifiable"
      
    ))
  
  
  saveRDS(y_2, paste0("new_mort", y_2[1, 1]))
}  


data_process_84(mort1984)
data_process_84(mort1985)
data_process_84(mort1986)
data_process_84(mort1987)
data_process_84(mort1988)




################################################################################
###1989 added education reoced and the origin changed to hispanic recode########
mort1989<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1989.csv" )
mort1990<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1990.csv" )
mort1991<-  read.csv( "/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1991.csv")
mort1992<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1992.csv")
mort1993<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1993.csv" )
mort1994<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1994.csv" )
mort1995<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1995.csv" )
mort1996<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1996.csv")
mort1997<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1997.csv")
mort1998<-  read.csv("/Users/zhengyangdong/Desktop/Zhengyang Dong/mortality files/mort1989-2020/mort1998.csv")


# columns keep
colnames(mort1989)
column_89 <-c("datayear", "staters","educr", "monthdth","sex","race","ager12","placdth",
                    "marstat","hspanicr", "autopsy","ucod", 
                    "ranum", "record_1", "record_2", "record_3", "record_4", "record_5", "record_6", "record_7", 
                    "record_8", "record_9", "record_10", "record_11", "record_12", "record_13", "record_14", 
                    "record_15", "record_16", "record_17", "record_18", "record_19", "record_20" )

column_89
# ucod at position 12; mcod at 14:33
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
  
  y_1 <-y_1[c(-12, -14:-33)]
  y_1["datayear"]<- paste0("19", y_1[1,1])
  
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
                       staters ==59 ~'Remainder of the world'
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
    mutate(autopsy = case_when(
      autopsy == 1 ~ "Yes", 
      autopsy == 2 ~ "No", 
      autopsy == 8 ~ "Autopsy performed not on certificate", 
      autopsy == 9 ~ "Autopsy performed not stated"
    ))%>%
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
      race == 8 ~ "Other Asian or Pacific Islander", 
      race == 9 ~ "All other Races"
      
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
      educr == 5~ "15 years and more", 
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
    ))
    
  
  saveRDS(y_2, paste0("new_mort", y_2[1, 1]))
}  

data_process_89(mort1989)
data_process_89(mort1990)
data_process_89(mort1991)

#################races including detailed races
data_process_92 <- function(x){
  y<- x[column_92]
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
  
  y_1 <-y_1[c(-12, -14:-33)]
  y_1["datayear"]<- paste0("19", y_1[1,1])
  
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
                       staters ==59 ~'Remainder of the world'
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
    mutate(autopsy = case_when(
      autopsy == 1 ~ "Yes", 
      autopsy == 2 ~ "No", 
      autopsy == 8 ~ "Autopsy performed not on certificate", 
      autopsy == 9 ~ "Autopsy performed not stated"
    ))%>%
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
      educr == 5~ "15 years and more", 
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
      hspanicr == 9~ "Hispanic origin unknown"
    ))
  
  
  saveRDS(y_2, paste0("new_mort", y_2[1, 1]))
}  

data_process_92(mort1992)
data_process_92(mort1993)
data_process_92(mort1994)

#############################################################################################

column_95 <-c("datayear", "staters","educr", "monthdth","sex","race","ager12","placdth",
              "marstat","hspanicr","ucod", 
              "ranum", "record_1", "record_2", "record_3", "record_4", "record_5", "record_6", "record_7", 
              "record_8", "record_9", "record_10", "record_11", "record_12", "record_13", "record_14", 
              "record_15", "record_16", "record_17", "record_18", "record_19", "record_20" )

column_95
data_process_95 <- function(x){
  y<- x[column_95]
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
  for (i in  c(11,13:32)){
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
  colnames(y_1)[33:53] <- new_names
  
  y_1 <-y_1[c(-11, -13:-32)]
  y_1["datayear"]<- paste0("19", y_1[1,1])
  
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
                       staters ==59 ~'Remainder of the world'
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
      educr == 5~ "15 years and more", 
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
      hspanicr == 9~ "Hispanic origin unknown"
    ))
  
  
  saveRDS(y_2, paste0("new_mort", y_2[1, 1]))
}  

data_process_95(mort1995)

###########################################################################
colnames(mort1996)
column_96 <- c("year", "staters","educr", "monthdth","sex","race","ager12","placdth",
               "marstat","hspanicr", "ucod", 
               "ranum", "record_1", "record_2", "record_3", "record_4", "record_5", "record_6", "record_7", 
               "record_8", "record_9", "record_10", "record_11", "record_12", "record_13", "record_14", 
               "record_15", "record_16", "record_17", "record_18", "record_19", "record_20")
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
  for (i in  c(11,13:32)){
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
  colnames(y_1)[33:53] <- new_names
  
  y_1 <-y_1[c(-11, -13:-32)]
  
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
                       staters ==59 ~'Remainder of the world'
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
      educr == 5~ "15 years and more", 
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
    ))
  
  
  saveRDS(y_2, paste0("new_mort", y_2[1, 1]))
}  

data_process_96(mort1996)
data_process_96(mort1997)
data_process_96(mort1998)

### Test 
mortality_1979<- readRDS("/Users/zhengyangdong/new_mort1979")
mortality_1984<- readRDS("/Users/zhengyangdong/new_mort1984")
mortality_1989<- readRDS("/Users/zhengyangdong/new_mort1989")