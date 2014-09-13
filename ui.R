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
      "variable in an XY plot format with an optional",
      "display of the regression line. It is designed",
      "for easyviewing and browsing the mtcars data set",
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
    
   checkboxInput("show_Regression_Line", "Show Regression Line", FALSE),
   
   helpText("This data presentation arrangement is similar",
      "to OLAP Cubes and is what many people in business",
      "environments want to see and use.")
  ),
  
  # Show the caption and plot of the requested variable against mpg
  mainPanel(
        
    h4(textOutput("Var_1")),
    h4(textOutput("Var_2")),
    h4(textOutput("caption")),
    
    plotOutput("mpgPlot")
  )
))
