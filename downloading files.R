install.packages("rvest")
library(rvest)
library(tidyverse)

# Set up the desired years records 
x<-seq(1986, 2015, 1)
# Setup the loop 
year<- paste0("/mort", 1970:2015)
year1 <- paste0( 1970:2015, year)

getOption('timeout')
options(timeout = 600)
  for (ss in x)
      download.file(
      paste0('https://data.nber.org/mortality/',ss,'/mort',ss,'.csv.zip'), 
      paste0(ss,'.zip'), mode = "wb")

warnings()

getwd()

download.file('https://data.nber.org/mortality/1991/mort1991.csv.zip', "1991.zip")
package_version(dplyr)
citation("shiny")
citation("ggplot2")
citation("tidyverse")
citation("dplyr")
packageVersion()

packageVersion("ggplot2")
packageVersion("tidyverse")
packageVersion("dplyr")

packageVersion("shiny")