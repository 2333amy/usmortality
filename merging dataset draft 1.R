# Combining different RDS into together 
library(tidyverse)
getwd()
path = "C:/Users/z5396150/OneDrive - UNSW/Documents"

setwd("C:/Users/z5396150/OneDrive - UNSW/Documents")

list_RDS = list.files(path = path)
list_using = lapply(list_RDS, readRDS)
mort1968_1978 <- do.call("rbind", list_using)

mort_1999_2002<- paste0("new_mort", 1999:2002)
list_using = lapply(mort_1999_2002, readRDS)
mort_1999_2002<- do.call("rbind", list_using)
saveRDS(mort_1999_2002, "mort_1999_2002")

mort_2005_2019<- paste0("new_mort", 2005:2019)
list_using = lapply(mort_2005_2019, readRDS)
mort_2005_2019<- do.call("rbind", list_using)
saveRDS(mort_2005_2019, "mort_2005_2019")


list_using = lapply(c("new_mort2003", "new_mort2004"), readRDS)
mort_2003_2004<- do.call("rbind", list_using)
saveRDS(mort_2003_2004, "mort_2003_2004")

mort_1979_1988<- paste0("new_mort", 79:88)
list_using = lapply(mort_1979_1988, readRDS)
mort_1979_1988<- do.call("rbind", list_using)
saveRDS(mort_1979_1988, "mort_1979_1988")


mort_1989_1992<- paste0("new_mort", 89:92)
list_using = lapply(mort_1989_1992, readRDS)
mort_1989_1992<- do.call("rbind", list_using)
saveRDS(mort_1989_1992, "mort_1989_1992")

list_using = lapply(c("new_mort93", "new_mort94"), readRDS)
mort_1993_1994<- do.call("rbind", list_using)
saveRDS(mort_1993_1994, "mort_1993_1994")

list_using = lapply(c("new_mort1996","new_mort1997" ,"new_mort1998"), readRDS)
mort_1996_1998<- do.call("rbind", list_using)
saveRDS(mort_1996_1998, "mort_1996_1998")


#Binding columns 
mort1979_1992 <- bind_rows(mort_1979_1988,mort_1989_1992 )
