library(shiny)
library(datasets)
library("ggplot2")

shinyServer(function(input, output) 
{
  attach(mtcars)
  
  # Variables Display.
  output$caption <- reactive({ paste("Current Plot: ", input$variable1, " versus ", input$variable2) })
  
  output$Var_1 <- reactive({ paste("Performance Variable: ", input$variable1) })
  output$Var_2 <- reactive({ paste("Factor Variable:      ", input$variable2) })

  
  # The Output Plot.
  environment <- environment() 

  output$mpgPlot <- renderPlot({
    
  thePlot <- ggplot(mtcars, aes (get(input$variable1), get(input$variable2)), environment = environment) + geom_point() + geom_smooth(method=input$smoother)
        
  thePlot + ggtitle(paste(input$variable1, " versus ", input$variable2)) + ylab(input$variable2) + xlab(input$variable1) + geom_line(stat="hline", yintercept="mean") + geom_line(stat="vline", xintercept="mean")

  })
  
  
  # Factor Variables Calculations
  
  output$Min_Var <-  reactive({ paste("Min:  ", min(get(input$variable2))) })
  output$Mean_Var <-  reactive({ paste("Min:  ", mean(get(input$variable2))) })
  output$Max_Var <-  reactive({ paste("Min:  ", max(get(input$variable2))) })  

})
