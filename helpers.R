## Data import and cleaning
wnv<- read.csv("/Users/janehuston/Downloads/West_Nile_Cases__2006-present.csv")
wnv$month <- 0
wnv<- within(wnv, {
  month[Week.Reported >= 48] <- 12
  month[Week.Reported <48 & Week.Reported >= 44] <- 11
  month[Week.Reported <44 & Week.Reported >= 39] <- 10
  month[Week.Reported <39 & Week.Reported >= 35] <- 9
  month[Week.Reported <35 & Week.Reported >= 31] <- 8
  month[Week.Reported <31 & Week.Reported >= 26] <- 7
  month[Week.Reported <26 & Week.Reported >= 22] <- 6
  month[Week.Reported < 22 & Week.Reported >= 17] <- 5
  month[Week.Reported < 17 & Week.Reported >= 13] <- 4
  month[Week.Reported < 13 & Week.Reported >= 8] <- 3
  month[Week.Reported < 8 & Week.Reported >= 4] <- 2
  month[Week.Reported < 4 ] <- 1
})
monthly<- aggregate(wnv$Positive.Cases, by= list('Year'=wnv$Year, 'Month'=wnv$month, 'County'=wnv$County), FUN = sum)

#generate vector of colors for map
shades<- colorRampPalette(c("white", "red"))(50)
cats<- as.integer(cut(monthly$x, 50), include.lowest=TRUE, ordered = TRUE)
fills<- shades[cats]

map('county', 'California', fill=TRUE, col=fills)

# percent_map <- function(var, color, legend.title, year) {
# 
#   # generate vector of fill colors for map
#   shades <- colorRampPalette(c("white", color))(32)
#   
#   percents <- as.integer(cut(healthvar, 100), 
#     include.lowest = TRUE, ordered = TRUE))
#   fills <- shades[percents]
# 
#   # plot choropleth map
#   map("county", 'California',fill = TRUE, col = fills, 
#     resolution = 0, lty = 0, projection = "polyconic", 
#     myborder = 0, mar = c(0,0,0,0))
# }