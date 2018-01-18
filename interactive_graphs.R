# interactive graphics from R
#   check out http://htmlwidgets.org
#   (particularly "Showcase" and "Gallery")

# plotly
library(dplyr)
library(ggplot2)
library(plotly)
surveys <- read.csv("http://kbroman.org/datacarp/portal_clean.csv")

p <- ggplot(surveys, aes(x=weight, y=hindfoot_length)) +
    geom_point(aes(color=species_id))
ggplotly(p)

########################################

# find madison location
library(ggmap)
madison <- geocode("Madison, WI", source="google")

# plot map
library(leaflet)
leaflet() %>%
    setView(lng= madison$lon, lat=madison$lat, zoom=13) %>%
    addProviderTiles("CartoDB.Positron")

# add a point at a location
wid <- geocode("330 N Orchard St, Madison, WI", source="google")
leaflet() %>%
    setView(lng= madison$lon, lat=madison$lat, zoom=13) %>%
    addProviderTiles("CartoDB.Positron") %>% 
    addCircleMarkers(lng=wid$lon, lat=wid$lat, popup="WID", radius=2)

########################################

