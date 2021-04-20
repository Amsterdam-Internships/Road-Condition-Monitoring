# Exploratory Data Analysis of Inspections Data

The inspection data includes 23,919 inspections undertaken on 11,112 separate stretches of asphalt road. The inspections are taken manually by Gemeente Amsterdam's Roads and Mobility Department according to the CROW guidelines [1].

The inspections data comes as a CSV with corresponding shapefiles for the stretches of roads inspected. Road section coverage and specificity are demonstrated below, with roads coloured by the year they were built:

![](https://github.com/Amsterdam-Internships/Road-Condition-Monitoring/blob/main/media/roads.gif)

The road section dataset includes the following variables:

| Variable  | Description | Summary |
| ------------- | ------------- | ------------- |
| GUID | Unique road segment identifier  | N/A  |
| OBJECTTYPE  | Type of shapefile | Road segment - 11,112 |
| TYPE  | Type of road surface | Asphalt - 11,112 |
| TYPE_GEDET  | First sub-type of road surface | Dense graded - 10,458 |
|   |  | Surface treatment - 452 |
|   |  | Open/porous - 201 |
| TYPE_EXTRA  | Second sub-type of road surface | Asphalt concrete - 8,167 |
|   |  | Stone mastic asphalt - 2,207 |
|   |  | Surface treatment - 452 |
|   |  | Thin noise reducing coating - 137 |
|   |  | Asphalt concrete thin layer - 44 |
|   |  | Combination coating - 37 |
|   |  | Stone mastic asphalt (8G+) - 29 |
|   |  | Emulsion asphalt concrete - 2 |
|   |  | Gravel asphalt concrete - 1 |
| KLEUR | Colour | Grey - 10,550 |
|   |  | Red - 562 |
| JAAR_VAN_A | Year built | Minimum - 1901 |
|  |  | Median - 1990 |
|  |  | Max - 2020 |
|  |  | Max - 2020 |
|  |  | NAs - 40 |

![](https://github.com/Amsterdam-Internships/Road-Condition-Monitoring/blob/main/media/road-construction-year-hist.jpeg)

[1] CROW (2011) ‘Handleiding globale visuele inspectie’ https://www.crow.nl/publicaties/handleiding-globale-visuele-inspectie-2011
