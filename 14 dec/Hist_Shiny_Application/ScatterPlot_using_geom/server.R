library(shiny)
library(ggplot2)
setwd("C:/LAB PROGRAMS/8_ADV.ANALYTICS_TA/DATASETS")
cars93 <- read.csv("Cars93.csv")

library(ggplot2)
shinyServer(function(input, output) {
    output$scatter <- renderPlot({
    df<-cars93[,c(input$num_x,y=input$num_y)]
    colnames(df)<-c('col1','col2')
    ggplot(data=df,aes(x=col1,y=col2))+
    geom_point()+
    labs(x=input$num_x,y=input$num_y)
    
  }) 
})
