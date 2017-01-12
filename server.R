library(shiny)

shinyServer(function(input, output) {
  payment <- reactive({input$principal * 
      (input$interest/12 * (1 + input$interest/12) * input$months) / ((1 + input$interest/12) *
                                                                        input$months - 1)
  })

  output$payment = renderText(payment())
  
})

 