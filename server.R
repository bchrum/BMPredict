library(shiny)

source("pf.R")

shinyServer(function(input, output) {
    output$T <- renderText({input$Temp})
    output$W <- renderText({input$Wind})
    output$prediction <- renderText({predictFinish(input$Temp,
        input$Wind)}) })
  