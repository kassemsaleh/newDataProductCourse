#
# R file containing the graphical user interface for the App. 


library(shiny)
library(markdown)
library(dplyr)

shinyUI(navbarPage("Compare Car Performances",
                  tabPanel("Table",
                  sidebarLayout(
                    sidebarPanel(
                        helpText("Select input below to filter for the desired car"),
                        checkboxGroupInput('cyl', 'Number of cylinders:', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4,6,8)),
                        sliderInput('disp', 'Displacement', min=50, max=500, value=c(50,500), step=20),
                        sliderInput('hp', 'Horsepower', min=40, max=400, value=c(40,400), step=20),
                        checkboxGroupInput('am', 'Transmission:', c("Automatic"=0, "Manual"=1), selected = c(0))
                      ),
                      mainPanel(dataTableOutput('table'))
                    )
                   )
)
)   
