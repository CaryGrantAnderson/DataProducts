library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  titlePanel("Performance and Factors"),
  
  
  # Sidebar with controls to select the variable to plot against mpg
  # and to specify whether outliers should be included
  sidebarPanel(

    h4("Cary Grant Anderson"),
    h5("September 13, 2014"),
    
    helpText("This Shiny apps displays the mtcars data set",
      "variable in an XY plot format with a display option",
      "of four smoothing options - Loess, lm, glm, and gam.",
      "It is designed for browsing the mtcars data set",
      "variables which are grouped and separated into",
      "two categories - Performance data variables and",
      "Factor data variables.  Performance data is the",
      "output facts of the data set and the Factor data",
      "are the factors that go into producing the",
      "Performance data."),
    
    selectInput("variable1", "Performance Variable:",
                list("MPG" = "mpg", 
                     "1/4 Mile Time" = "qsec")),
    
    selectInput("variable2", "Factor Variable:",
                list("Cylinders" = "cyl", 
                     "Displacement" = "disp", 
                     "HP" = "hp", 
                     "Rear Axle Ratio" = "drat", 
                     "Weight" = "wt", 
                     "Transmission" = "am", 
                     "Carburetors" = "carb", 
                     "Gears" = "gear")),
    
    selectInput("smoother", "Smoothing Method:",
                list("loess" = "loess", 
                     "lm" = "lm", 
                     "glm" = "glm", 
                     "gam" = "gam")),
   
    helpText("The black vertical and horizontal lines show the",
             "mean values of both axis."),
    
    helpText("This data presentation arrangement is similar",
      "to OLAP Cubes and is what many people in business",
      "environments want to see and use.")
  ),
  
  # Show the caption and plot of the requested variable against mpg
  mainPanel(
        
    h4(textOutput("Var_1")),
    h4(textOutput("Var_2")),
    h4(textOutput("caption")),
    
    h4("Factor Variable Calculations:"),
    h6(textOutput("Min_Var")),
    h6(textOutput("Mean_Var")),
    h6(textOutput("Max_Var")),
    
    plotOutput("mpgPlot")
  )
))
