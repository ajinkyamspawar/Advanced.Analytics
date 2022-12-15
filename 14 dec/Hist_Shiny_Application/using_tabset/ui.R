library(shiny)

shinyUI(fluidPage(
  
  titlePanel("Plot"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId="num_var",
                  label="select a variable",
                  choices=list("crim","zn","indus","chas","nox","rm","age", "dis","rad","tax","ptratio","black","lstat"))
      
    ),
    mainPanel(
      tabsetPanel(
     tabPanel("histrogram",plotOutput(outputId="hist")),
     tabPanel("Boxplot",plotOutput(outputId="box")),
     tabPanel("Data",dataTableOutput(outputId="tbl"))
    )
    )
  )
))