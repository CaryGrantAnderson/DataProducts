library(shiny)
library(datasets)


shinyServer(function(input, output) 
{
  output$Var_1 <- reactive({ paste("Performance Variable: ", input$variable1) })
  output$Var_2 <- reactive({ paste("Factor Variable:      ", input$variable2) })
  
  output$mpgPlot <- renderPlot({
    
    attach(mtcars)
    
    # Create the proper data frame for plotting.
    #
    # Note: This is ackward code.  I tried using data frames and switching with just the variables
    # but the regression lines did not display properly for some reason.  The code ran fine
    # outside of Shiny but not in it.  So to get it to work I implemented it this way and
    # the regression lines do work.
    #
    # Else I would have implemented it like this:
    #
    #   # Compute the forumla text in a reactive expression. 
    #   regressionForumla <- reactive({ paste(input$variable2, "~", input$variable1) })
    #
    #   displayData <- data.frame(mpg = mtcars$mpg, disp = factor(mtcars[[input$variable2]]))
    #
    #   plot(displayData)
    #
    #   abline(lm(regressionForumla))
    #
    #   title("Peformance Variable versus Factor Variable")
    
    
    if (input$variable1 == "mpg") 
    {
      if (input$variable2 == "cyl") 
      {      
        plot(mpg, cyl) 
        title("Regression of Cylinders on MPG")
        
        # Show the regression line if that option is checked.
        if(input$show_Regression_Line == TRUE)
        {
          abline(lm(cyl~mpg))
          
          output$caption <- reactive({ paste("Regression Formula: ", input$variable2, "~", input$variable1) })
        }
      }
      else if (input$variable2 == "disp") 
      {
        plot(mpg, disp) 
        title("Regression of Displacement on MPG")
        
        # Show the regression line if that option is checked.
        if(input$show_Regression_Line == TRUE)
        {
          abline(lm(disp~mpg))
          
          output$caption <- reactive({ paste("Regression Formula: ", input$variable2, "~", input$variable1) })
        }
      }
      else if (input$variable2 == "hp") 
      {
        plot(mpg, hp) 
        title("Regression of HP on MPG")
        
        # Show the regression line if that option is checked.
        if(input$show_Regression_Line == TRUE)
        {
          abline(lm(hp~mpg))
          
          output$caption <- reactive({ paste("Regression Formula: ", input$variable2, "~", input$variable1) })
        }
      }
      else if (input$variable2 == "drat") 
      {
        plot(mpg, drat) 
        title("Regression of Rear Axle Ratio on MPG")
        
        # Show the regression line if that option is checked.
        if(input$show_Regression_Line == TRUE)
        {
          abline(lm(drat~mpg))
          
          output$caption <- reactive({ paste("Regression Formula: ", input$variable2, "~", input$variable1) })
        }
      }
      else if (input$variable2 == "wt") 
      {
        plot(mpg, wt) 
        title("Regression of Weight on MPG")
        
        # Show the regression line if that option is checked.
        if(input$show_Regression_Line == TRUE)
        {
          abline(lm(wt~mpg))
          
          output$caption <- reactive({ paste("Regression Formula: ", input$variable2, "~", input$variable1) })
        }
      }
      else if (input$variable2 == "vs") 
      {
        plot(mpg, vs) 
        title("Regression of VS on MPG")
        
        # Show the regression line if that option is checked.
        if(input$show_Regression_Line == TRUE)
        {
          abline(lm(vs~mpg))
          
          output$caption <- reactive({ paste("Regression Formula: ", input$variable2, "~", input$variable1) })
        }
      }
      if (input$variable2 == "am") 
      {
        plot(mpg, am) 
        title("Regression of Transmission Type on MPG")
        
        # Show the regression line if that option is checked.
        if(input$show_Regression_Line == TRUE)
        {
          abline(lm(am~mpg))
          
          output$caption <- reactive({ paste("Regression Formula: ", input$variable2, "~", input$variable1) })
        }
      }
      else if (input$variable2 == "gear") 
      {
        plot(mpg, gear) 
        title("Regression of Gears on MPG")
        
        # Show the regression line if that option is checked.
        if(input$show_Regression_Line == TRUE)
        {
          abline(lm(gear~mpg))
          
          output$caption <- reactive({ paste("Regression Formula: ", input$variable2, "~", input$variable1) })
        }
      }
      else if (input$variable2 == "carb") 
      {
        plot(mpg, carb) 
        title("Regression of Carburetors on MPG")
        
        # Show the regression line if that option is checked.
        if(input$show_Regression_Line == TRUE)
        {
          abline(lm(carb~mpg))
          
          output$caption <- reactive({ paste("Regression Formula: ", input$variable2, "~", input$variable1) })
        }
      }
    }
    else if (input$variable1 == "qsec") 
    {
      if (input$variable2 == "cyl") 
      {      
        plot(qsec, cyl) 
        title("Regression of Cylinders on 1/4 Mile Time")
        
        # Show the regression line if that option is checked.
        if(input$show_Regression_Line == TRUE)
        {
          abline(lm(cyl~qsec))
          
          output$caption <- reactive({ paste("Regression Formula: ", input$variable2, "~", input$variable1) })
        }
      }
      else if (input$variable2 == "disp") 
      {
        plot(qsec, disp) 
        title("Regression of Displacement on 1/4 Mile Time")
        
        # Show the regression line if that option is checked.
        if(input$show_Regression_Line == TRUE)
        {
          abline(lm(disp~qsec))
          
          output$caption <- reactive({ paste("Regression Formula: ", input$variable2, "~", input$variable1) })
        }
      }
      else if (input$variable2 == "hp") 
      {
        plot(qsec, hp) 
        title("Regression of HP on 1/4 Mile Time")
        
        # Show the regression line if that option is checked.
        if(input$show_Regression_Line == TRUE)
        {
          abline(lm(hp~qsec))
          
          output$caption <- reactive({ paste("Regression Formula: ", input$variable2, "~", input$variable1) })
        }
      }
      else if (input$variable2 == "drat") 
      {
        plot(qsec, drat) 
        title("Regression of Rear Axle Ratio on 1/4 Mile Time")
        
        # Show the regression line if that option is checked.
        if(input$show_Regression_Line == TRUE)
        {
          abline(lm(drat~qsec))
          
          output$caption <- reactive({ paste("Regression Formula: ", input$variable2, "~", input$variable1) })
        }
      }
      else if (input$variable2 == "wt") 
      {
        plot(qsec, wt) 
        title("Regression of Weight on 1/4 Mile Time")
        
        # Show the regression line if that option is checked.
        if(input$show_Regression_Line == TRUE)
        {
          abline(lm(wt~qsec))
          
          output$caption <- reactive({ paste("Regression Formula: ", input$variable2, "~", input$variable1) })
        }
      }
      else if (input$variable2 == "vs") 
      {
        plot(qsec) 
        title("Regression of VS on 1/4 Mile Time")
        
        # Show the regression line if that option is checked.
        if(input$show_Regression_Line == TRUE)
        {
          abline(lm(vs~qsec))
          
          output$caption <- reactive({ paste("Regression Formula: ", input$variable2, "~", input$variable1) })
        }
      }
      if (input$variable2 == "am") 
      {
        plot(qsec, am) 
        title("Regression of Transmission Type on 1/4 Mile Time")
        
        # Show the regression line if that option is checked.
        if(input$show_Regression_Line == TRUE)
        {
          abline(lm(am~qsec))
          
          output$caption <- reactive({ paste("Regression Formula: ", input$variable2, "~", input$variable1) })
        }
      }
      else if (input$variable2 == "gear") 
      {
        plot(qsec, gear) 
        title("Regression of Gears on 1/4 Mile Time")
        
        # Show the regression line if that option is checked.
        if(input$show_Regression_Line == TRUE)
        {
          abline(lm(gear~qsec))
          
          output$caption <- reactive({ paste("Regression Formula: ", input$variable2, "~", input$variable1) })
        }
      }
      else if (input$variable2 == "carb") 
      {
        plot(qsec, carb) 
        title("Regression of Carburetors on 1/4 Mile Time")
        
        # Show the regression line if that option is checked.
        if(input$show_Regression_Line == TRUE)
        {
          abline(lm(carb~qsec))
          
          output$caption <- reactive({ paste("Regression Formula: ", input$variable2, "~", input$variable1) })
        }
      }
    }
    
  })
  
  
})
