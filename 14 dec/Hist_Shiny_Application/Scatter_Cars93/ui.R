library(shiny)

shinyUI(fluidPage(

    titlePanel("Scatterplot:"),

        sidebarLayout(
        sidebarPanel(
            selectInput(inputId="num_x",
                        label="select a variable",
                        choices=list("Price","MPG.highway",
                                     "MPG.city","EngineSize",
                                     "Horsepower","Fuel.tank.capacity")),
                       selectInput(inputId="num_y",
                        label="select a variable",
                        choices=list("Price","MPG.highway",
                                     "MPG.city","EngineSize",
                                     "Horsepower","Fuel.tank.capacity"))
        ),
        mainPanel(
          plotOutput(outputId="scatter")
        )
    )
))