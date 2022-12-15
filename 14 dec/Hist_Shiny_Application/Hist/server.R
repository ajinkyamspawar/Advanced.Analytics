

library(shiny)
setwd("C:/LAB PROGRAMS/8_ADV.ANALYTICS_TA/DATASETS")
cars93 <- read.csv("Cars93.csv")


shinyServer(function(input, output) {
      
    output$hist <- renderPlot({

        hist(cars93[,input$num_Var],
             main=paste("histogram of",input$num_Var
                        ))

    })

})
