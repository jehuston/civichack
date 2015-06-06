shinyUI(fluidPage(
  titlePanel("Health & Climate in Your Backyard"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("View Health Effects in Relation to Climate Variables in California"),
      
      selectInput("climvar", 
        label = "Choose a variable to display",
        choices = c("ClimVar1", "ClimVar2"),
        selected = "ClimVar1"),
    
      selectInput("healthvar",
        label = "Choose a variable to display",
        choices = c("healthVar1", "healthVar2"),
        selected = "healthVar1"),
      
      ## how can we make this a timeseries/scrubber?
      selectInput("year", 
        label = "Year", 
        choices = c(2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014),
        selected = 2014)
    ),
    
    mainPanel(
      plotOutput("map1"),
      plotOutput("map2")
     
  )
)))
