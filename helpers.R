setwd("/Users/janehuston/Documents/CivicHack")
counties<- read.csv("WNV_cases_temp.csv")
names(counties)<- c("year", "county", "temp", "wnv")
counties$county<- tolower(counties$county)

#merge and sort data
counties_map<- map_data('county', 'California')
climate_map<- merge(counties_map, counties, by.x="subregion", by.y="county")
climate_map<- arrange(climate_map, group, order)

#map it!
draw_temp<- function(year){
  g<- ggplot(climate_map[climate_map$year == year, ], aes(x= long, y= lat, group=group, fill = temp))+
    geom_polygon(color= "white")+
    coord_map("polyconic") 
  print(g)
}

draw_wnv<- function(year){
  g<- ggplot(climate_map[climate_map$year == year, ], aes(x=long, y=lat, group=group, fill = wnv))+
    geom_polygon(color = "white")+
    coord_map("polyconic")
  print(g)
}
