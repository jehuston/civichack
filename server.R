library(maps)
library(ggplot2)
library(plyr)
source('helpers.R')
shinyServer(function(input, output) {
  
  output$map1 <- renderPlot({
   draw_temp(input$year)
  })
  
  output$map2 <- renderPlot({
    draw_wnv(input$year)
  })

  })

