#
# This file includes the server code of a Shiny web application. 
#
library(shiny)
library(datasets)
library(dplyr)

shinyServer(function(input, output) {
  # Show the cars after filtering
  output$table <- renderDataTable({
    disp_seq <- seq(from = input$disp[1], to = input$disp[2], by = 0.1)
    hp_seq <- seq(from = input$hp[1], to = input$hp[2], by = 1)
    data <- transmute(mtcars, Car = rownames(mtcars), MilesPerGallon = mpg, 
                      Cylinders = cyl, Displacement = disp, Horsepower = hp,Transmission = am)
    data
  }, options = list(lengthMenu = c(5, 10, 30), pageLength = 10))
})
