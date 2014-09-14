# DataProducts

This is a Shiny application developed for the Coursera course "Developing Data Products" (with Shiny).
By Cary Grant Anderson on 9/13/2014.

## Purpose

This Shiny apps displays the mtcars data set variable in an XY plot format with an optional display of the regression line. It is designed for easy viewing and browsing the mtcars data set variables which are grouped and separated into two categories - Performance data variables and Factor data variables. Performance data is the output facts of the data set and the Factor data are the factors that go into producing the Performance data.

This data presentation arrangement is similar to OLAP Cubes and is what many people in business environments want to see and use.

## Installation

Run this Shiny app in R Studio by setting your working directory to the file download directory for server.R and ui.R then run the runApp() command.

Or run this directly in R Studio from Github via:

  `shiny::runGitHub("DataProducts", "CaryGrantAnderson")`

A R presentation is on RPubs at:

  http://rpubs.com/CGrantAnderson/Browse_mtcars
  
And you can access the Browse mtcars Shiny App from this URL:

  https://carygrantanderson.shinyapps.io/Browse_mtcars/

