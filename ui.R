library(shiny)

shinyUI(fluidPage(
  titlePanel("Calculate monthly payment to amortize loan"),
  sliderInput("principal", "What is the amount being borrowed?", 100000, 1000000, value = 200000),
  sliderInput("interest", "What is  the annual interest in the loan?", 0.01, 0.08, value = 0.04),
  sliderInput("months", "How many monthly payments will be done?", 120, 360, 180),
  
  mainPanel(
    h3("Your monthly payment will be: "), textOutput("payment")
  
)))