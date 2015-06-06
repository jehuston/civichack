library(maps)
library(mapproj)

shinyServer(function(input, output) {
  
  output$map1 <- renderPlot({
    map('county', 'California')
  })
  
  output$map2 <- renderPlot({
    map('county', 'California')

  })
})



# counties<- read.csv()
# source("helpers.R")
# 
# shinyServer(function(input, output){
#   
#     output$map<- renderPlot({
#       args<- switch(input$var,
#         "Percent White"= list(counties$white, "steelblue", "% White"),
#         "Percent Black" = list(counties$black, "turquoise", "% Black"),
#         "Percent Hispanic" = list(counties$hispanic, "seagreen", "% Hispanic"),
#         "Percent Asian" = list(counties$asian, "purple", "% Asian"))
# 
#       args$min <- input$range[1]
#       args$max <- input$range[2]
# 
#       do.call(percent_map, args)
#     })
#     
#   }
# )