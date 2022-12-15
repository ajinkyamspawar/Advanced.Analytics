library(shiny)

shinyUI(fluidPage(

    titlePanel("Histogram"),

        sidebarLayout(
        sidebarPanel(
            selectInput(inputId="num_Var",
                        label="select a variable",
                        choices=list("Price","MPG.highway",
                                     "MPG.city","EngineSize",
                                     "Horsepower","Fuel.tank.capacity"))
                       
        ),
        mainPanel(
          plotOutput(outputId="hist")
        )
    )
))