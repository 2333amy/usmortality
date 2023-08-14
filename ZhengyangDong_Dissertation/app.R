#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(plotly)
library(dplyr)
library(DT)
library(pheatmap)
library(GGally)
library(ggthemes)
library(extrafont)
library(rempsyc)
library(RColorBrewer)
library(shiny)

# Load the data required 
##############################

# load("~/age_ranum_1979_2020_table.Rda")
# load("~/age_ranum_1979_2020.Rda")
Age_Standard_rate_long<- readRDS("Age_Standard_rate_long")
disease_92_count_79_20_wide_disease_percentage<-readRDS("disease_92_count_79_20_wide_disease_percentage")

ratio_1999_2020_df<-readRDS("ratio_1999_2020_df")

log_ratio_1999_2020<-readRDS("log_ratio_1999_2020_df")

diseases_mcoc_list_for_graphs_groups_into_4_df_final_version<- readRDS("diseases_mcoc_list_for_graphs_groups_into_4_df_final_version")

log_equal_positions_df_final_version<-readRDS( "log_equal_positions_df_final_version")

ucod_broad_diseases_cause_specific_death_rate_final_version <- 
  readRDS("ucod_broad_diseases_cause_specific_death_rate_final_version")
##############################

# Data pretreatment #
##############################
# age_ranum_1979_2020$Age <- factor(age_ranum_1979_2020$Age, c("Less than 65 years", "65-74 years", 
#                                                              "75-84 years", "85 years and over"))
# 
# age_ranum_1979_2020$year<- as.character(age_ranum_1979_2020$year)


##############################

# Age-standardised Deathate from 1979-2020 #
##############################
Age_Standard_rate_long_final_version<- ggplot(Age_Standard_rate_long, aes(year, value, group = ASDR))+
  geom_line(aes(color= ASDR))+
  scale_x_continuous(breaks=seq(1979,2020, by=10))+
  scale_color_manual(values = c("#1B9E77", "#D95F02" ,"#7570B3")) +
  theme_classic() +
  theme(text=element_text(size=12, family = "Times New Roman" )) +
  ylab("Age Standardised Death Rate Per 100,000 Population") +
  xlab("Year")+
  theme(legend.position = "top")+
  theme(legend.title = element_blank())
##############################


# The average number of conditions documented in different age group 
##############################
# ave_num_age_group_final_version <-ggplot(age_ranum_1979_2020 %>% 
#          select(year, Age, `Average causes`) %>% 
#          rename(Year = year) %>%
#          filter_at(vars(Year), 
#                    any_vars(. %in% c("1979", "1984", "1989", "1994", "1999", "2004", "2009", "2014", "2019")))
#        , aes(x=Age, y=`Average causes`, group=Year, color=Year)) +
#   geom_line() +
#   scale_color_manual(values = c("#1B9E77", "#D95F02" ,"#7570B3", "#E7298A" ,"#66A61E" ,"#E6AB02" ,
#                                 "#A6761D" ,"#666666","#386CB0")) +
#   theme_classic() +
#   theme(text=element_text(size=7, family = "Times New Roman" )) +
#   ylab("Average number of causes recorded in Death Certificate") +
#   xlab("Age Group")+
#   theme(legend.position = "top")

##############################

#DISEASS RANKING USE UCOD 
disease_92_count_79_20_wide_disease_percentage 


# HEATMAP MCOD/UCOD ratio 
##############################
MCOD_UCOD_ratio_part_1<- pheatmap(log_ratio_1999_2020[1:42,], cluster_cols = FALSE, 
         cluster_rows = FALSE, silent = TRUE)

MCOD_UCOD_ratio_part_2<- pheatmap(log_ratio_1999_2020[43:83,], cluster_cols = FALSE, 
                                  cluster_rows = FALSE, silent = TRUE)
##############################



#MCOD CAUSE-SPECIFIC DEATH RATE# 
##############################

plot_list <- lapply(diseases_mcoc_list_for_graphs_groups_into_4_df_final_version, 
                    function(data) {
  ggplot(data, aes(x = year, y = CSMR)) + 
    geom_line() + 
    theme_classic() +
    theme(text=element_text(size=7, family = "Times New Roman" )) +
    ylab("Cause Specific Mortality Rate") +
    xlab("Year")+
    facet_wrap(~ Disease,ncol=3,  scales = "free")
})

##############################


#CO-OCCURRANCES OF INTERESTED DISEASE + COVID) 
##############################
# Interested diseases selected based on the top 15 diseases in 2020 
interested_diseases<- c("Other forms of heart disease", "Other respiratory diseases","Hypertensive heart disease", 
                        "Arteriosclerotic/ischaemic and degenerative", 
                        "Drug dependence, toxicomania", "Diabetes Mellitus", "Other obstructive pulmonary diseases", "Pneumonia", "Septicemia", 
                        "Cerebrovascular disease", "Nephritis, nephrosis and renal failure", "Overweight, obesity, and other hyperalimentation", 
                        "Alzheimer's disease", "Alcohol abuse",  "Other endocrine, nutritional and metabolic diseases")

co_occurrance_heat_map <- pheatmap(log_equal_positions_df_final_version, cluster_cols = FALSE, 
         cluster_rows = FALSE)

##############################
# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("The Visualisation of the United States Mortality, 1979-2020"),
    
    # Side bar with different tabs 
    navlistPanel(
      "Summary" , widths = c(3, 8), fluid = FALSE, 
      tabPanel("Introduction", 
               h1("The U.S mortality dataset between 1979 to 2020 "),
               h4("Author: Zhengyang Dong"),
               h4("Email: z5396150@ad.unsw.edu.au"),
               h4("Supervisor: Associate Professor Katja Hanewald Email: k.hanewald@unsw.edu.au"),
               h4("Supervisor: Dr Andres M Villegas Ramirez Email: a.villegas@unsw.edu.au"), 
               h5("Background"), 
               h6("As developed countries undergo the epidemiologic transition, predicting future population 
                  life expectancy has become increasingly challenging due to the complexity of causes of death. 
                  Age, Period, Cohort (APC) models have been wildly used in the current stage, 
                  while neural networks have been adapted to enhance prediction accuracy by incorporating multiple 
                  socio-economic variables and underlying causes of death (UCOD). However, despite the potential benefits, 
                  the application of multiple causes of death to predict life 
                  expectancy at a national scale remain limited. To address this gap, this research project utilizes 
                  United States mortality dataset from 1979 to 2020, with the primary objective of 
                  providing an open-source dataset for researchers to explore and manipulate. 
                  By examining this extensive dataset, we aim to contribute to the advancement of methodologies 
                  for predicting life expectancy, ultimately enhancing our understanding of population health 
                  dynamics in the context of complex mortality patterns."), 
            
                plotOutput("MortalityPopulationPercentage")

    ), 
    
    #   tabPanel("Average number of conditions", 
    #            h4("The trend of the number of recorded conditions in death certificates (downloadable)"), 
    #            # two figures after decimal points
    #            DTOutput("NumberOfConditionsByAge")),
    # tabPanel("Average number of conditions Chart", 
    #          h4("The trend of the number of recorded conditions in death certificates"), 
    #            plotlyOutput("AverageNumberAgeGroup")), 
    # 

      
      "Underlying Causes of Death", 

    tabPanel("Cause-Specific Mortality Rate",
             h4("We utilised the 20 broad grouping diseases to show the general trend of from 1979 to 2020."),
             h4("Please choose the interested disease: "), 
             #Use the inputID and lable to determine the diseases interested
             selectInput(inputId = "BroadDiseasesUcod", 
                         label = "Broad Diseases", 
                         choices = list("malignant neoplasm" = "malignant neoplasm", 
                                        "blood and blood forming organs" = "blood and blood forming organs", 
                                        "cerebrovascular" = "cerebrovascular", 
                                        "certain conditions originating in the perinatal period" = "certain conditions originating in the perinatal period", 
                                        "certain infectious diseases" = "certain_infectious_diseases", 
                                        "complications of pregnacy childbirth puerperium" =  "complications of pregnacy childbirth puerperium", 
                                        "congenital malformations" = "congenital malformations", 
                                        "digestive systems" =   "digestive systems", 
                                        "endocrine nutritional metabolic diseases" =  "endocrine nutritional metabolic diseases", 
                                        "genitourinary" = "genitourinary", 
                                        "heart diseases" =  "heart diseases", 
                                        "ill defined or unknown diseases" =  "ill defined or unknown diseases", 
                                        "mental behavioural disorders" =  "mental behavioural disorders" , 
                                        "musculoskeleta connective tissue" = "musculoskeleta _connective tissue", 
                                        "other neoplasms" = "other neoplasms", 
                                        "respiratory" = "respiratory", 
                                        "skin subcutaneous tissues" =  "skin subcutaneous tissues", 
                                        "unspecific disorders of the circulatory system" = "unspecific disorders of the circulatory system", 
                                        "external cause" = "external_cause", 
                                        "nervous systems sense organs" =  "nervous systems sense organs" 
                         ),
                         selected = "external cause", 
                         multiple = FALSE), 
             plotOutput("UcodTrend")

    ), 
      
      "Multiple Causes of Death", 
      # tabPanel("Ratio of MCOD/UCOD", 
      #   h5("The multiple conditions were extracted from the death certificate, up to 20 conditions"), 
      #   h5("We examined how the codition is allocated as MCOD or UCOD."), 
      #   h6("To be noted, the heatmap shows the tranformatino of log format for data visualisation. "),
      #   DTOutput("RatioMcodUcodTable"), 
      # 
      #   plotOutput("RatioPart1"),
      #   plotOutput("RatioPart2")), 
    # tabPanel("Ratio of MCOD/UCOD - Graphs", 
    #          plotOutput("RatioPart1", height = 1000),
    #          plotOutput("RatioPart2", height = 1000)), 
    

    tabPanel("Cause-specific Death Rate", 
             h4("Excluding external diseases, we analysed the trend of diseases recorded in death certificate by graphs
              between 1999 and 2020."), 
             plotOutput("McodCauseSpecificDeathRate1", height = 1000), 
             plotOutput("McodCauseSpecificDeathRate2", height = 1000), 
             plotOutput("McodCauseSpecificDeathRate3", height = 1000), 
             plotOutput("McodCauseSpecificDeathRate4", height = 1000)
             
             ), 
    
    tabPanel("Co-occurrances", 
             h4("We illustrates the frequency of co-occurrences between various diseases of interest."), 
             plotOutput("CoOccurranceHeatmap", height = 900)
             )
        
      ))
    


# Define server logic required to draw a histogram
server <- function(input, output) {
  output$MortalityPopulationPercentage <- renderPlot(Age_Standard_rate_long_final_version)
  
  output$NumberOfConditionsByAge <- renderDT({
    datatable(
      round(age_ranum_1979_2020_table,2), 
      options = list(paging = TRUE,
                     pageLength = 15,
                     scrollX = TRUE,
                     scrollY = TRUE,
                     autoWidth = TRUE,
                     server = FALSE,
                     dom = 'Bfrtip',
                     buttons = c('csv', 'excel')),
      extensions = 'Buttons',
      selection = 'single', 
      filter = 'bottom'
    )
  })

  # output$AverageNumberAgeGroup <- renderPlotly({
  #   a<- ggplot(age_ranum_1979_2020 %>% 
  #            select(year, Age, `Average causes`) %>% 
  #            rename(Year = year) %>%
  #            filter_at(vars(Year), 
  #                      any_vars(. %in% c("1979", "1984", "1989", "1994", "1999", "2004", "2009", "2014", "2019")))
  #          , aes(x=Age, y=`Average causes`, group=Year, color=Year)) +
  #     geom_line() +
  #     scale_color_manual(values = c("#1B9E77", "#D95F02" ,"#7570B3", "#E7298A" ,"#66A61E" ,"#E6AB02" ,
  #                                   "#A6761D" ,"#666666","#386CB0")) +
  #     theme_classic() +
  #     theme(text=element_text(size=7, family = "Times New Roman" )) +
  #     ylab("Average number of causes recorded in Death Certificate") +
  #     xlab("Age Group")+
  #     theme(legend.position = "top")
  #   ggplotly(a)
  # })

  
  # output$RatioPart1<- renderPlot(MCOD_UCOD_ratio_part_1)
  # output$RatioPart2<- renderPlot(MCOD_UCOD_ratio_part_2)
  # 
  # output$RatioMcodUcodTable <- renderDT({
  #   datatable(ratio_1999_2020_df, 
  #             options = list(paging = TRUE,    ## paginate the output
  #                            pageLength = 15,  ## number of rows to output for each page
  #                            scrollX = TRUE,   ## enable scrolling on X axis
  #                            scrollY = TRUE,   ## enable scrolling on Y axis
  #                            autoWidth = TRUE, ## use smart column width handling
  #                            server = FALSE,   ## use client-side processing
  #                            dom = 'Bfrtip',
  #                            buttons = c('csv', 'excel')
  #             ), 
  #             extensions = 'Buttons',
  #             selection = 'single', 
  #             filter = 'bottom') 
  # })

  output$McodCauseSpecificDeathRate1 <- renderPlot(plot_list[[1]])
  output$McodCauseSpecificDeathRate2 <- renderPlot(plot_list[[2]])
  output$McodCauseSpecificDeathRate3 <- renderPlot(plot_list[[3]])
  output$McodCauseSpecificDeathRate4 <- renderPlot(plot_list[[4]])
  
output$CoOccurranceHeatmap<- renderPlot(co_occurrance_heat_map)

output$UcodTrend<-renderPlot({
    ggplot(
     ucod_broad_diseases_cause_specific_death_rate_final_version[[input$BroadDiseasesUcod]] , aes(x=Year, y=Mortality, group = Gender))+
     geom_line(aes(color=Gender))+
     scale_color_manual(values = c("#1B9E77", "#D95F02" ,"#7570B3")) +
     theme_classic() +
     theme(text=element_text(size=18, family = "Times New Roman" )) +
        ylab("Age Standardised Death Rate Per 100,000 Population") +
    xlab("Year")+
   theme(legend.position = "top")+
   theme(legend.title = element_blank())

})
}
# Run the application 
shinyApp(ui = ui, server = server)
