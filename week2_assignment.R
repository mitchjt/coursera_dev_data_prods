# create custom icon
titanicIcon <- makeIcon(
    iconUrl = "http://img03.deviantart.net/48fc/i/2012/208/b/7/titanic_png_stock_by_pixelmixtur_stocks-d58vvw3.png",
    iconWidth = 31*722/543, iconHeight = 31,
    iconAnchorX = 31*722/543/2, iconAnchorY = 16
)

# define hopkins lat long combinations
titanic_latlong <- data.frame(lat = c(41.726931), lng = c(-49.948253))

# use hopkins icon
titanic_latlong %>% 
    leaflet() %>%
    addTiles() %>%
    addMarkers(icon = titanicIcon) %>%
    setView(lng = titanic_latlong$lng, lat = titanic_latlong$lat, zoom = 4)
