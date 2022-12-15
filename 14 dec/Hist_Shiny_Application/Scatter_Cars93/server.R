library(shiny)
setwd("C:/LAB PROGRAMS/8_ADV.ANALYTICS_TA/DATASETS")
cars93 <- read.csv("Cars93.csv")

library(ggplot2)
shinyServer(function(input, output) {
  output$scatter <- renderPlot({
  df<-cars93[,c(input$num_x,input$num_y)]
  plot(df[,1],df[,2],xlab=input$num_x,ylab=input$num_y)    

  }) 
})
