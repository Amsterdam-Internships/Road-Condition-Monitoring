library(sf)
library(raster)
library(ggplot2)
library(ggmap)
library(RColorBrewer)

roads <- st_read(
  "/Users/owenwinter/Documents/GitHub/Road-Condition-Monitoring/inspection-data/road_shapefiles")

roads <- st_transform(roads, crs=4326)

ph_basemap <- get_map(location=c(lon = 4.886, lat = 52.3605), zoom=12, maptype = 'satellite')

plot <- ggmap(ph_basemap) +
  geom_sf(roads, mapping = aes(geometry=geometry, fill = JAAR_VAN_A, color=JAAR_VAN_A), inherit.aes = FALSE) +
  scale_colour_gradient(limits = c(1930,2021),
                        name = "Year Built") +
  scale_fill_gradient(limits = c(1930,2021),
                      name = "Year Built") +
  geom_point(sample, mapping = aes(x=long, y=lat), inherit.aes = FALSE, col="white") +
  theme(axis.line=element_blank(),#axis.text.x=element_blank(),
        #axis.text.y=element_blank(),#axis.ticks=element_blank(),
        axis.title.x=element_blank(),
        axis.title.y=element_blank(),legend.position="none",
        panel.background=element_blank(),panel.border=element_blank(),panel.grid.major=element_blank(),
        panel.grid.minor=element_blank(),plot.background=element_blank()) +
  coord_sf()

plot

hist(roads$JAAR_VAN_A, xlab = "Road Year of Construction", main="Histogram of Road Construction Year")

inspections <- read.csv("/Users/owenwinter/Documents/GitHub/Road-Condition-Monitoring/inspection-data/CROW-inspecties_20210413.csv")

inspections$Datum <- as.Date(inspections$Datum, format = "%d-%m-%Y")

table(inspections$Dwarsonvlakheid)

sample <- read.csv("/Users/owenwinter/Documents/Masters Thesis/Data/Images meta/images.csv")



