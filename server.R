library(maps)
library(mapproj)

shinyServer(function(input, output) {
  
#   output$map1 <- renderPlot({
#     map('county', 'California')
#   })
  
  output$map2 <- renderPlot({
    map('county', 'California')

  })
})

# 
# 
# source("helpers.R")
# 
# shinyServer(function(input, output){
#   
# #     output$map1<- renderPlot({
# #       args<- switch(input$climvar,
# #         "ClimVar1"= list(data$climvar, "steelblue", "legend title"))
# #        
# #       args$year <- input$year
# # 
# #       do.call(percent_map, args)
# #     })
#     
#       output$map2<- renderPlot({
#         args<- switch(input$healthvar,
#           "healthvar1" = list(cases$x, "tomato1", "legend title"))
#         args$year<- input$year
#         
#         do.call(percent_map, args)
#       })
#   }
# )