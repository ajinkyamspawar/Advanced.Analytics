library(shiny)
setwd("C:/LAB PROGRAMS/8_ADV.ANALYTICS_TA/DATASETS")
boston <- read.csv("Boston.csv")

library(ggplot2)
shinyServer(function(input, output) {
  output$box <- renderPlot({
    df<-data.frame(col1=boston[,input$num_var])  
    ggplot(data=df,aes(y=col1))+
      geom_boxplot(color='red',fill='pink')+  
      labs(y=input$num_var,x=input$num_var)
    
  })
  
})
