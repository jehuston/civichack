shinyUI(fluidPage(
  titlePanel("Health & Climate in Your Backyard"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("View Health Effects in Relation to Climate Variables in California"),
    
      selectInput("var",
        label = "Choose a variable to display",
        choices = c("West Nile Virus cases", "Asthma Rates", "Rates of Cardiovascular Disease"),
        selected = "West Nile Virus cases"),
      
      selectInput("year", 
        label = "Year", 
        choices = c(2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014),
        selected = 2006)
    ),
    
    mainPanel(
      plotOutput("map1"),
      plotOutput("map2")
     
  )
)))
